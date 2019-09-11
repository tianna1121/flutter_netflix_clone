import 'dart:async';

import '../model/item_model.dart';
import '../model/movie_detail_model.dart';
import '../model/image_model.dart';
import './movie_api_provider.dart';

class Respository {
  final moviesApiProvider = MovieApiProvider();
  Future<MovieDetailModel> fetchMovieDetail(int movieId) =>
      moviesApiProvider.fetchMovieDetail(movieId);
  Future<ImageModel> fetchMovieImages(int movieId) =>
      moviesApiProvider.fetchMovieImages(movieId);
  Future<ItemModel> fetchMovieList(String type) =>
      moviesApiProvider.fetchMovieList(type);
}
