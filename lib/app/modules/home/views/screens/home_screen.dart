import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:getx_movie/app/widgets/shimmer_widget.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:getx_movie/core/values/styles.dart';
import 'package:heroicons/heroicons.dart';
import 'package:getx_movie/core/values/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        // Greeting Section
        Container(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
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
        ),
        // Trending Section
        spaceX(8),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Trending Now',
                  style: mHeaderStyle,
                ),
              ),
              spaceY(8),
              Container(
                height: 180,
                width: screenSize.width,
                child: Swiper(
                  autoplay: false,
                  itemCount: 8,
                  loop: true,
                  viewportFraction: 0.7,
                  scale: 0.8,
                  // onIndexChanged: (index) {},
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: ShimmerWidget.rectangle(
                        height: screenSize.height * 0.2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
