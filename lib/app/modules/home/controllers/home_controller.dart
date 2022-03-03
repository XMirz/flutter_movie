import 'package:get/get.dart';
import 'package:getx_movie/app/data/models/movie.dart';
import 'package:getx_movie/app/data/services/movie_repository.dart';
import 'package:getx_movie/app/data/services/movie_service.dart';

class HomeController extends GetxController {
  final _repository = MovieRepository(MovieService());
  final tabIndex = 0.obs;
  final nowPlayingCarouselIndex = 0.obs;
  final nowPlayingMovies = <Movie>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void updateTabIndex(int index) {
    tabIndex.value = index;
  }

  void fetchNowPlaying() async {
    var movies = await _repository.nowPlaying;
    nowPlayingMovies.value = movies;
  }
}
