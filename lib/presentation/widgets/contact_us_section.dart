import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suramerica/core/colors.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contáctanos',
            style: TextStyle(
              fontFamily: GoogleFonts.oswald().fontFamily,
              fontSize: 36,
              color: Colors.grey[600],
            ),
          ),
          const Gap(48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Bucaramanga',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'Cra 27 # 63 - 02 Puerta del Sol',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const Gap(48),
              Column(
                children: [
                  Text(
                    'Cúcuta',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'Calle 8 # 3 - 146 Villa del Rosario La parada',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: SuramericaColors.green,
                  ),
                  const Gap(4),
                  Text(
                    'Cels: 317 369 2417',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const Gap(16),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: SuramericaColors.green,
                  ),
                  const Gap(4),
                  Text(
                    'Tel: (607) 674 5974',
                    style: TextStyle(
                      fontFamily: 'BrandonGrotesque',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FaIcon(
                FontAwesomeIcons.arrowRight,
                color: SuramericaColors.green,
              ),
              const Gap(4),
              Text(
                'comercial@suramericasas.com',
                style: TextStyle(
                  fontFamily: 'BrandonGrotesque',
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
