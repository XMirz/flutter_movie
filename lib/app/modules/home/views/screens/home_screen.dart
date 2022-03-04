import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/app/modules/home/widgets/greeting_section.dart';
import 'package:getx_movie/app/modules/home/widgets/now_playing.dart';
import 'package:getx_movie/app/modules/home/widgets/now_playing_card.dart';
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
        GreetingSection(),
        // Trending Section
        spaceY(16),
        NowPlayingSection(),
      ],
    );
  }
}
