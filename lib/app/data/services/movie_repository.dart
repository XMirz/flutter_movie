import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/data/services/movie_service.dart';

class MovieRepository {
  final MovieService _movieService;

  MovieRepository(this._movieService);

  Future<List<Movie>> get nowPlaying async =>
      await _movieService.fetchNowPlaying();
}
