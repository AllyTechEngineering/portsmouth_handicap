import 'package:equatable/equatable.dart';

import 'movie_model.dart';


abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MoviesState {
  LoadedState(this.movies);

  final List<MovieModel> movies;

  @override
  List<Object> get props => [movies];

  @override
  String toString() {
    return 'LoadedState(movies: $movies)';
  }
}

class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}
