import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import 'movie_model.dart';

class MovieRepository {
  const MovieRepository(this.client);

  final Dio client;

  Future<List<MovieModel>> getMovies() async {
    try {
      final url =
          'https://api.themoviedb.org/3/trending/movie/week?api_key=060e7c76aff06a20ca4a875981216f3f';

      // final response = await client.get(url); // not used

      /// test code to see if I can read in a local json file
      final String fileData = await rootBundle.loadString('lib/src/portsmouth.json');
      final fileDataTest = await jsonDecode(fileData);
      print(fileDataTest.toString()); // prints the JSON file
      /// end test code
      final movies = List<MovieModel>.of(
        // response.data['results'].map<MovieModel>( // not used
        // fileDataTest['results'].map<MovieModel>(
        fileDataTest['Centerboard'].map<MovieModel>(
          (json) {
            return MovieModel(
              title: json['Name'],
              dpn: json['DPN'],
              // urlImage: 'https://image.tmdb.org/t/p/w185${json['poster_path']}',
            );
          },
        ),
      );
      return movies;
    } catch (e) {
      throw e;
    }
  } //getMovies
} //class
