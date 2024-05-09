import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:suramerica/core/strings.dart';

const textStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'BrandonGrotesque',
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      centerTitle: true,
      title: Opacity(
        opacity: 0.8,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF00736a),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  _scrollToSection(context, 0);
                },
                child: const Text(
                  SuramericaStrings.whoAreWe,
                  style: textStyle,
                ),
              ),
              const Gap(16),
              TextButton(
                onPressed: () {
                  _scrollToSection(context, 1);
                },
                child: const Text(
                  SuramericaStrings.tourism,
                  style: textStyle,
                ),
              ),
              const Gap(16),
              TextButton(
                onPressed: () {
                  _scrollToSection(context, 2);
                },
                child: const Text(
                  SuramericaStrings.transport,
                  style: textStyle,
                ),
              ),
              const Gap(16),
              TextButton(
                onPressed: () {
                  _scrollToSection(context, 3);
                },
                child: const Text(
                  SuramericaStrings.contactAppBar,
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollToSection(BuildContext context, int page) {
    scrollController.animateTo(
      MediaQuery.sizeOf(context).height * (page == 0 ? 1 : page + 0.65),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
