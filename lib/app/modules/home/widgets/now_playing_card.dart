import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/modules/home/controllers/home_controller.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:getx_movie/core/values/styles.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class NowPlayingCard extends StatelessWidget {
  final Movie movie;
  NowPlayingCard(this.movie, {Key? key}) : super(key: key);

  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id_ID');
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                Text(
                  movie.title,
                  style: mTitleStyle,
                ),
                Text(
                  'On ${DateFormat.MMMMd('en_US').format(movie.releaseDate)}, ${DateFormat.y('en_US').format(movie.releaseDate)}',
                  style: mSubtitleStyle,
                ),
                Text(
                  '${movie.score}/10',
                  style: mScoreStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
