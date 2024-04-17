import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suramerica/core/keys.dart';
import 'package:suramerica/presentation/widgets/main_carousel.dart';
import 'package:suramerica/presentation/widgets/tourism_section.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final scrollController = ScrollController();
  final imageList = const [
    AssetImage('assets/images/carousel-1.jpg'),
    AssetImage('assets/images/carousel-2.jpg'),
    AssetImage('assets/images/carousel-3.jpg'),
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      for (final image in imageList) {
        precacheImage(image, context);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: const Text("SliverAppBar Example"),
            actions: [
              TextButton(
                  onPressed: () {
                    final context = tourismSectionKey.currentContext;
                    if (context != null) {
                      Scrollable.ensureVisible(context,
                          duration: const Duration(seconds: 1), alignment: 0.5);
                    }
                  },
                  child: const Text('Turismo')),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const MainCarousel(),
                const TourismSection(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('Whatsapp');
        },
        child: const FaIcon(FontAwesomeIcons.whatsapp),
      ),
    );
  }
}
