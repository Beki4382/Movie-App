import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  int id;
  String language;
  String title;
  double rating;
  Movie(
      {required this.id,
      required this.language,
      required this.rating,
      required this.title});

  @override
  List<Object?> get props => [id, language, rating, title];
}
