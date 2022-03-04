import 'package:flutter/material.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:getx_movie/core/values/styles.dart';
import 'package:heroicons/heroicons.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          // User Profile
          Container(
            height: 48,
            width: 48,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: mBackgroundSecondary, shape: BoxShape.circle),
            child: HeroIcon(
              HeroIcons.user,
              color: mContentColor,
            ),
          ),
          // Greetings
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
              height: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Hafez',
                    style: mTitleStyle,
                  ),
                  Text(
                    'Find new movies here',
                    style: mSubtitleStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 48,
            width: 32,
            alignment: Alignment.center,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: HeroIcon(
              HeroIcons.heart,
              color: mContentColor,
              solid: true,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
