import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/core/values/colors.dart';

class NowPlayingCard extends StatelessWidget {
  final Movie movie;
  NowPlayingCard(this.movie, {Key? key}) : super(key: key);

  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
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
