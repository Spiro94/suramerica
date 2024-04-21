import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/colors.dart';
import 'package:suramerica/core/strings.dart';
import 'package:suramerica/presentation/widgets/who_are_we_text.dart';

class WhoAreWeSection extends StatelessWidget {
  const WhoAreWeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 48, left: 48, right: 48),
      height: MediaQuery.sizeOf(context).height,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/suramerica-logo-big.svg'),
                  Text(
                    SuramericaStrings.tourism.toUpperCase(),
                    style: TextStyle(
                      fontFamily: GoogleFonts.oswald().fontFamily,
                      fontWeight: FontWeight.w900,
                      fontSize: 160,
                      color: SuramericaColors.orange.withOpacity(0.05),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                children: [
                  const WhoAreWeText(),
                  const Gap(64),
                  const Text(
                    SuramericaStrings.checkOurPlans,
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
                      onPressed: () {},
                      child: const Text(
                        'Descarga portafolios',
                        style: TextStyle(
                          fontFamily: 'BrandonGrotesque',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
