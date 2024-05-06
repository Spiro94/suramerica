import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/colors.dart';
import 'package:suramerica/core/strings.dart';
import 'package:suramerica/core/utils.dart';

class TransportSection extends StatelessWidget {
  const TransportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        children: [
          Text(
            SuramericaStrings.transport.toUpperCase(),
            style: TextStyle(
                fontFamily: GoogleFonts.oswald().fontFamily,
                fontWeight: FontWeight.w900,
                fontSize: 160,
                color: SuramericaColors.lightGreen.withOpacity(0.1),
                height: 1.25,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                  color: SuramericaColors.lightGreen,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: RichText(
                  text: const TextSpan(
                    text: 'Servicio de ',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'Transporte Especial',
                        style: TextStyle(
                          fontFamily: 'BrandonGrotesque',
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Wrap(
                  children: [1, 2, 3, 4, 5]
                      .map(
                        (e) => SvgPicture.asset(
                          'images/interface-$e.svg',
                          height: 60,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          SuramericaStrings.transportDescription,
                          style: TextStyle(
                            fontFamily: 'BrandonGrotesque',
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/tourism.jpg',
                          height: MediaQuery.sizeOf(context).height * 0.32,
                        ),
                        const Gap(24),
                        const Text(
                          SuramericaStrings.requestService,
                          style: TextStyle(
                            fontFamily: 'BrandonGrotesque',
                            fontSize: 26,
                          ),
                        ),
                        const Gap(8),
                        FilledButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(
                              SuramericaColors.orange,
                            ),
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
