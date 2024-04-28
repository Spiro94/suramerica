// ignore_for_file: avoid_web_libraries_in_flutter, unsafe_html

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/strings.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({super.key});

  @override
  State<MainCarousel> createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        FlutterCarousel(
          options: CarouselOptions(
            height: size.height,
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
              'assets/images/main-bg.svg', //TODO: Crop the image
              width: size.width * 0.55,
              height: size.height,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          width: size.width * 0.45,
          padding: const EdgeInsets.only(left: 68),
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IgnorePointer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      SuramericaStrings.yourAdventure,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      SuramericaStrings.beginsHere,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Gap(100),
                    Text(
                      SuramericaStrings.programYourVacations,
                      style: TextStyle(
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 55,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(16),
                    const Text(
                      SuramericaStrings.weAdapt,
                      style: TextStyle(
                        fontFamily: 'BrandonGrotesque',
                        fontSize: 25,
                        color: Colors.white,
                        height: 1.25,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(24),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF008c82),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: const ContinuousRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      SuramericaStrings.contact,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFCF5A2C),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: const ContinuousRectangleBorder(
                        side: BorderSide(color: Color(0xFFCF5A2C)),
                      ),
                    ),
                    onPressed: () {
                      html.window.open(
                        'assets/portfolio/pdf-test.pdf',
                        'Portafolio',
                      );
                    },
                    child: const Text(
                      SuramericaStrings.portfolio,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
