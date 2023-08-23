import 'package:equatable/equatable.dart';

class MovieDetail extends Equatable {
  int id;
  String backdropImg;
  String posterImg;
  List gener;
  String language;
  String title;
  String overview;
  String releaseDate;
  double rating;

  MovieDetail(
      {required this.id,
      required this.backdropImg,
      required this.gener,
      required this.language,
      required this.overview,
      required this.posterImg,
      required this.rating,
      required this.releaseDate,
      required this.title});

  @override
  List<Object?> get props => [
        id,
        backdropImg,
        gener,
        language,
        overview,
        posterImg,
        rating,
        releaseDate,
        title
      ];
}
