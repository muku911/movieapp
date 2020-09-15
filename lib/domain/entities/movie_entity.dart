import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final String backdropPath;
  final String title;
  final String releaseDate;
  final String overview;
  final int id;
  final num voteAverage;

  const MovieEntity({
    @required this.posterPath,
    @required this.backdropPath,
    @required this.title,
    @required this.releaseDate,
    this.overview,
    @required this.id,
    @required this.voteAverage
  }): assert(id != null, 'Movie id must not be null');

  @override
  List<Object> get props => throw [id, title];

  @override
  bool get stringify => true;
}
