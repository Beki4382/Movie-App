import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/domain/entity/movie.dart';

abstract class MovieRepo {
  Future<Either<Failure, Movie>> getMovie(id);

}
