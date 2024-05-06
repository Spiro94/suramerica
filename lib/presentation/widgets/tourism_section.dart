import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/colors.dart';
import 'package:suramerica/core/constant.dart';
import 'package:suramerica/core/strings.dart';
import 'package:suramerica/core/utils.dart';

class TourismSection extends StatelessWidget {
  const TourismSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 24),
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      SuramericaStrings.tourism.toUpperCase(),
                      style: TextStyle(
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontWeight: FontWeight.w900,
                        fontSize: 160,
                        color: SuramericaColors.orange.withOpacity(0.1),
                        height: 1.25,
                      ),
                    ),
                  ],
                ),
                const Gap(48),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      SuramericaStrings.checkOurPlans,
                      style: TextStyle(
                        fontFamily: 'BrandonGrotesque',
                        fontSize: 30,
                      ),
                    ),
                    const Gap(8),
                    FilledButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(SuramericaColors.orange),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 16,
                          ),
                        ),
                      ),
                      onPressed: () {
                        openPDFInNewTab('portfolio/pdf-test.pdf');
                      },
                      child: const Text(
                        SuramericaStrings.downloadPortfolio,
                        style: TextStyle(
                          fontFamily: 'BrandonGrotesque',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [0, 1, 2].map((i) => planList[i]).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
