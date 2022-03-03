import 'dart:convert';

import 'package:intl/intl.dart';

class Movie {
  final String title;
  final String overview;
  final String posterImage;
  final DateTime releaseDate;
  final double score;
  final int? voter;
  Movie(
    this.title,
    this.overview,
    this.posterImage,
    this.releaseDate,
    this.score,
    this.voter,
  );

  // Now Playing constructor
  // Movie.nowPlaying(
  //     this.title, this.overview, this.releaseDate, this.score, this.voter);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'overview': overview,
      'releaseDate': releaseDate.millisecondsSinceEpoch,
      'score': score,
      'voter': voter,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      map['title'] ?? '',
      map['overview'] ?? '',
      map['poster_path'] != null
          ? 'https://image.tmdb.org/t/p/w500${map['poster_path']}'
          : '',
      DateTime.parse(map['release_date']),
      // DateTime.fromMillisecondsSinceEpoch(map['release_date']),
      map['vote_average']?.toDouble() ?? 0.0,
      map['vote_count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));
}
