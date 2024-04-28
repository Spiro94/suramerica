import 'package:flutter/material.dart';
import 'package:suramerica/presentation/widgets/plan_widget.dart';

final planList = [
  PlanWidget(
    title: 'PASADIAS',
    description: RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'BrandonGrotesque',
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Escápate',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' por un día y sumérgete en la magia',
            style: TextStyle(),
          ),
        ],
      ),
    ),
    downloadURL: 'downloadURL',
    images: const [
      'assets/images/trip1.jpg',
      'assets/images/trip2.jpg',
    ],
  ),
  PlanWidget(
    title: 'COLOMBIA',
    description: RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'BrandonGrotesque',
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Explora',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' la belleza natural de',
            style: TextStyle(),
          ),
          TextSpan(
            text: ' Colombia',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' en cada rincón que visites',
            style: TextStyle(),
          ),
        ],
      ),
    ),
    downloadURL: 'downloadURL',
    images: const [
      'assets/images/trip1.jpg',
      'assets/images/trip2.jpg',
    ],
  ),
  PlanWidget(
    title: 'INTERNACIONAL',
    description: RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'BrandonGrotesque',
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Viaja',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' hacia aventuras inolvidables alrededor del',
            style: TextStyle(),
          ),
          TextSpan(
            text: ' mundo',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
    downloadURL: 'downloadURL',
    images: const [
      'assets/images/trip1.jpg',
      'assets/images/trip2.jpg',
    ],
  ),
];
