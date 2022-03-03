import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/core/values/config.dart';

class MovieService {
  final Dio _dio = Dio();

  Future<List<Movie>> fetchNowPlaying() async {
    List<Movie> movies = [];
    var response =
        await _dio.get('${Config.movieUrl}/now_playing?${Config.apiKey}');
    print(response.data['results'][1]);
    List<dynamic> results = response.data['results'];
    for (var movie in results) {
      var newMovie = Movie.fromJson(jsonEncode(movie).toString());
      movies.add(newMovie);
    }
    return movies;
  }
}
