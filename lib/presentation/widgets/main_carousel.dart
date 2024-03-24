import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

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
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Image.asset(
                    'assets/images/bus.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
