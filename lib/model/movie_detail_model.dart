import 'package:flutter_netflix_clone/model/belong_to_collection_model.dart';
import 'package:flutter_netflix_clone/model/genre_model.dart';
import 'package:flutter_netflix_clone/model/production_company.dart';
import 'package:flutter_netflix_clone/model/production_county_model.dart';
import 'package:flutter_netflix_clone/model/spoken_language.dart';

import 'base_model.dart';

class MovieDetailModel extends baseModel {
  bool adult;
  String backdrop_path;
  BelongToCollectionModel belong_to_collection;
  int budget;
  List<GenreModel> genres = [];
  String homepage;
  int id;
  String imdb_id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  List<ProductionCompanyModel> production_companies = [];
  List<ProductionCountryModel> production_countries = [];
  int revenue;
  int runtime;
  List<SpokenLanguage> spoken_language = [];
  String status;
  String tagline;
  String title;
  bool video;
  double vote_average;
  int vote_count;

  MovieDetailModel.fromJson(Map<String, dynamic> parsedJson) {
    adult = parsedJson['adult'];
    backdrop_path = parsedJson['backdrop_path'];
    belong_to_collection =
        BelongToCollectionModel.fromJson(parsedJson['belong_to_collection']);
    budget = parsedJson['budget'];
    genres = GenreModel.fromJsonArray(parsedJson['genres']);
    homepage = parsedJson['homepage'];
    id = parsedJson['id'];
    imdb_id = parsedJson['imdb_id'];
    original_title = parsedJson['original_title'];
    original_language = parsedJson['original_language'];
    overview = parsedJson['overview'];
    popularity = parsedJson['popularity'];
    poster_path = parsedJson['poster_path'];
    production_companies = ProductionCompanyModel.fromJsonArray(
        parsedJson['production_companies']);
    production_countries = ProductionCountryModel.fromJsonArray(
        parsedJson['production_countries']);
    release_date = parsedJson['release_date'];
    revenue = parsedJson['revenue'];
    runtime = parsedJson['runtime'];
    spoken_language =
        SpokenLanguage.fromJsonArray(parsedJson['spoken_language']);
    status = parsedJson['status'];
    tagline = parsedJson['tagline'];
    title = parsedJson['title'];
    video = parsedJson['video'];
    vote_average = parsedJson['vote_average'];
    vote_count = parsedJson['vote_count'];
  }
}
