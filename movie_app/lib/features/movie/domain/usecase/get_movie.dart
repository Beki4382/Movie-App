import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/domain/entity/movie.dart';
import 'package:movie_app/features/movie/domain/repository/movie_repository.dart';

class GetMovie {
  final MovieRepo repository;

  GetMovie(this.repository);
  Future<Either<Failure, Movie>> execute(id) async {
    return repository.getMovie(id);
  }
}
