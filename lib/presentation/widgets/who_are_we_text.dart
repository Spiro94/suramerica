import 'package:flutter/material.dart';
import 'package:suramerica/core/strings.dart';

const TextStyle textStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'BrandonGrotesque',
  fontSize: 25,
  fontStyle: FontStyle.italic,
);

class WhoAreWeText extends StatelessWidget {
  const WhoAreWeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(children: [
        const TextSpan(
          text: SuramericaStrings.weAre,
          style: textStyle,
        ),
        TextSpan(
          text: SuramericaStrings.weAre1,
          style: textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text: SuramericaStrings.weAre2,
          style: textStyle,
        ),
        TextSpan(
          text: SuramericaStrings.weAre3,
          style: textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text: SuramericaStrings.weAre4,
          style: textStyle,
        ),
        TextSpan(
          text: SuramericaStrings.weAre5,
          style: textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text: SuramericaStrings.weAre6,
          style: textStyle,
        ),
      ]),
    );
  }
}
