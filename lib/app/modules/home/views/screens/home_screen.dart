import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/app/widgets/shimmer_widget.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:getx_movie/core/values/styles.dart';
import 'package:heroicons/heroicons.dart';
import 'package:getx_movie/core/values/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // Fetch and Update state
    controller.fetchNowPlaying();
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
        spaceY(16),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Now Playing',
                  style: mHeaderStyle,
                ),
              ),
              spaceY(16),
              Obx(
                () => Container(
                  height: 180,
                  width: screenSize.width,
                  child: Swiper(
                    autoplay: false,
                    itemCount: controller.nowPlayingMovies.length,
                    loop: true,
                    viewportFraction: 0.7,
                    scale: 0.8,
                    // onIndexChanged: (index) {
                    //   controller.nowPlayingCarouselIndex.value = index;
                    // },
                    itemBuilder: (context, index) {
                      return controller.nowPlayingMovies.isNotEmpty
                          ? buildNowPlayingCard(
                              controller.nowPlayingMovies[index])
                          : buildNowPlayingShimmer();
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildNowPlayingShimmer() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: ShimmerWidget.rectangle(
          height: Get.size.height * 0.2,
          borderRadius: BorderRadius.circular(8),
        ));
  }

  Widget buildNowPlayingCard(Movie movie) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: mBackgroundSecondary,
              image: DecorationImage(
                  image: NetworkImage(movie.posterImage), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                    begin: FractionalOffset.center,
                    end: FractionalOffset.bottomCenter,
                    colors: [Colors.transparent, Colors.black])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(controller.nowPlayingCarouselIndex.value.toString()),
                Text(controller.nowPlayingCarouselIndex.value.toString()),
                Text(controller.nowPlayingCarouselIndex.value.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
