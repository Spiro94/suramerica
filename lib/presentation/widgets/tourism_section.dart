import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:suramerica/core/constant.dart';
import 'package:suramerica/core/keys.dart';

class TourismSection extends StatelessWidget {
  const TourismSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      key: tourismSectionKey,
      padding: const EdgeInsets.only(
        top: 48,
        left: 48,
        right: 48,
        bottom: 48,
      ),
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Turismo',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [0, 1, 2].map((i) => planList[i]).toList(),
          ),
          // const Gap(24),
          // Text(
          //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // FilledButton(
          //   onPressed: () {},
          //   child: const Text(
          //     'Descargar planes de turismo',
          //   ),
          // ),
        ],
      ),
    );
  }
}
