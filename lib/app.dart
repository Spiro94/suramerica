import 'package:flutter/material.dart';
import 'package:suramerica/core/router.dart';

class SuramericaApp extends StatelessWidget {
  const SuramericaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
