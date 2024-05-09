import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:suramerica/presentation/widgets/app_bar.dart';
import 'package:suramerica/presentation/widgets/contact_us_section.dart';
import 'package:suramerica/presentation/widgets/main_carousel.dart';
import 'package:suramerica/presentation/widgets/tourism_section.dart';
import 'package:suramerica/presentation/widgets/transport_section.dart';
import 'package:suramerica/presentation/widgets/who_are_we_section.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

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
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverStack(
            children: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const MainCarousel(),
                    const WhoAreWeSection(),
                    const TourismSection(),
                    const TransportSection(),
                    const ContactUsSection(),
                  ],
                ),
              ),
              MainAppBar(
                scrollController: scrollController,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF25D366),
        foregroundColor: Colors.white,
        onPressed: () {
          log('Whatsapp');
        },
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          size: 30,
        ),
      ),
    );
  }
}
