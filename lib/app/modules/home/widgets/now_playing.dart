import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/app/modules/home/widgets/now_playing_card.dart';
import 'package:getx_movie/app/widgets/shimmer_widget.dart';
import 'package:getx_movie/core/values/styles.dart';
import 'package:getx_movie/core/values/widgets.dart';

class NowPlayingSection extends StatelessWidget {
  NowPlayingSection({Key? key}) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              width: Get.size.width,
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
                      ? NowPlayingCard(controller.nowPlayingMovies[index])
                      : buildNowPlayingShimmer();
                },
              ),
            ),
          )
        ],
      ),
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
}
