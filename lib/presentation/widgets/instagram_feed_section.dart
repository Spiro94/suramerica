// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class InstagramFeedSection extends StatefulWidget {
  const InstagramFeedSection({super.key});

  @override
  _InstagramFeedSectionState createState() => _InstagramFeedSectionState();
}

class _InstagramFeedSectionState extends State<InstagramFeedSection> {
  List<String> imageUrls = [];

  @override
  void initState() {
    super.initState();
    // fetchPosts();
  }

  Future<void> fetchPosts() async {
    final response = await http.get(
      Uri.parse(
        'https://graph.instagram.com/me/media?fields=id,media_type,media_url&access_token=IGQWRPa0VhSmJwQTRpcmRFelpwS0VQY2V3QjZAURE0zemozZAHBIYzFVckFIUmZAHR2ZA5VVFORVBqRXVVX3VJR284OFhRdVNTc1p5OVR2dVRqelc5eDlaYTEzdEVnOTZATdThsUUJod3U3MV9pQjBwZAXh4M1R4X3BIWncZD',
      ),
    );
    final data = jsonDecode(response.body);
    setState(
      () {
        imageUrls = (data['data'] as List<dynamic>)
            .where((element) => element['media_type'] != 'VIDEO')
            .map<String>((post) => post['media_url'] as String)
            .take(6)
            .toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double spacing = 10.0;
    final double itemWidth =
        size.width / 3 - 20; // Adjust width for 3 columns with 10px spacing
    const double paddingVertical = 24.0;

    // Calculate item height for 2 rows
    final double itemHeight =
        (size.height * 0.8 - 2 * paddingVertical - spacing) / 2;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 58),
      height: size.height * 0.7,
      child: Column(
        children: [
          Expanded(
            child: Text(
              'PRÓXIMAS SALIDAS',
              style: TextStyle(
                fontFamily: GoogleFonts.oswald().fontFamily,
                fontSize: 36,
                color: Colors.grey[600],
              ),
            ),
          ),
          const Gap(16),
          SizedBox(
            height: size.height * 0.45,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: itemWidth / itemHeight,
                crossAxisCount: 3,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse('https://instagram.com/suramerica'));
                  },
                  child: Image.asset(
                    'assets/images/insta${index + 1}.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
