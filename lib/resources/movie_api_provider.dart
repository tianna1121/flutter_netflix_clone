import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;

import '../model/item_model.dart';
import '../model/movie_detail_model.dart';
import '../model/image_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '802b2c4b88ea1183e50e6b285a27696e';

  Future<ItemModel> fetchMovieList(String type) async {
    final response = await client
        .get('http://api.htemoviedb.org/3/movie/$type?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<ImageModel> fetchMovieImages(int movieId) async {
    final response = await client.get(
        'http://api.htemoviedb.org/3/movie/$movieId/images?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ImageModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<MovieDetailModel> fetchMovieDetail(int movieId) async {
    final response = await client
        .get('http://api.htemoviedb.org/3/movie/$movieId?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if (response.statusCode == 200) {
      return MovieDetailModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
