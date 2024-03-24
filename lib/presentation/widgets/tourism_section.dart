// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:suramerica/core/keys.dart';

class TourismSection extends StatelessWidget {
  const TourismSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      key: tourismSectionKey,
      padding: const EdgeInsets.all(24),
      height: size.height,
      child: Column(
        children: [
          Text(
            'Turismo',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [0, 1, 2]
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    width: size.width * 0.2,
                    height: size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tourism.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: FilledButton(
                        onPressed: () {
                          html.window.open(
                              'https://www.orimi.com/pdf-test.pdf', 'PDF');
                        },
                        child: const Text('Descargar'),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const Gap(24),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          FilledButton(
            onPressed: () {},
            child: const Text(
              'Descargar planes de turismo',
            ),
          )
        ],
      ),
    );
  }
}
