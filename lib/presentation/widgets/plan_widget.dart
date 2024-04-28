// ignore_for_file: avoid_web_libraries_in_flutter, unsafe_html

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/colors.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({
    super.key,
    required this.title,
    required this.description,
    required this.downloadURL,
    required this.images,
  });
  final String title;
  final Widget description;
  final String downloadURL;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: size.width * 0.15,
      height: size.height * 0.5,
      child: Row(
        children: [
          Container(
            width: size.width * 0.02,
            color: SuramericaColors.orange,
          ),
          Expanded(
            child: Stack(
              children: [
                FlutterCarousel(
                  options: CarouselOptions(
                    height: size.height,
                    showIndicator: false,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayAnimationDuration: Durations.extralong1,
                  ),
                  items: images.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: size.width,
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(
                                0.25,
                              ), // Adjust opacity for filter strength
                              BlendMode.darken, // Blend mode
                            ),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.oswald().fontFamily,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Expanded(child: description),
                      const Gap(16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                        onPressed: () {
                          html.window.open(
                            'assets/portfolio/pdf-test.pdf',
                            'Portafolio',
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Conoce más',
                              style: TextStyle(
                                color: Color(0xFF7F7F7F),
                                fontFamily: 'BrandonGrotesque',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const Gap(8),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFa9d7d2),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
