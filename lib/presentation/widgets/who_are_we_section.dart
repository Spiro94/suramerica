import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suramerica/presentation/widgets/who_are_we_text.dart';

class WhoAreWeSection extends StatelessWidget {
  const WhoAreWeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        top: 48,
        left: 48,
        right: 48,
        bottom: 48,
      ),
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/suramerica-logo-big.svg',
                    height: MediaQuery.sizeOf(context).height * 0.25,
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WhoAreWeText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
