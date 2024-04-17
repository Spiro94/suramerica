import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({Key? key}) : super(key: key);

  @override
  State<MainCarousel> createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        FlutterCarousel(
          options: CarouselOptions(
            height: size.height - kToolbarHeight,
            showIndicator: true,
            slideIndicator: const CircularSlideIndicator(),
            enableInfiniteScroll: true,
            viewportFraction: 1,
          ),
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: size.width,
                  child: Image.asset(
                    'assets/images/carousel-$i.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        IgnorePointer(
          child: Opacity(
            opacity: 0.9,
            child: SvgPicture.asset(
              'assets/images/main-bg.svg',
              width: size.width * 0.55,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: size.width * 0.45,
          padding: const EdgeInsets.only(left: 68),
          height: size.height - kToolbarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TU AVENTURA',
                style: TextStyle(
                  fontFamily: 'MontserratBold',
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'COMIENZA AQUÍ',
                style: TextStyle(
                  fontFamily: 'MontserratBold',
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
              const Gap(100),
              Text(
                'PROGRAMA TUS VACACIONES',
                style: TextStyle(
                  fontFamily: GoogleFonts.oswald().fontFamily,
                  fontWeight: FontWeight.normal,
                  fontSize: 55,
                  color: Colors.white,
                ),
              ),
              Gap(16),
              Text(
                'Nos adaptamos a tus necesidades con planes flexibles y ajustables para que tu viaje sea perfecto. ¡Viaja con seguridad y confianza, mientras te aseguramos la diversión',
                style: TextStyle(
                  fontFamily: 'BrandonGrotesque',
                  // fontWeight: FontWeight.normal,
                  fontSize: 25,
                  color: Colors.white,
                  height: 1,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
