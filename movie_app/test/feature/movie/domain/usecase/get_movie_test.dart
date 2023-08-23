import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/features/movie/domain/entity/movie.dart';
import 'package:movie_app/features/movie/domain/repository/movie_repository.dart';
import 'package:movie_app/features/movie/domain/usecase/get_movie.dart';

import 'get_movie_test.mocks.dart';

@GenerateMocks([MovieRepo])
void main() {
  // without using late on the declaration of variables cause error of nullable during runtime.
  late GetMovie usecase;
  late MockMovieRepo mockRepo;

  setUp(() {
    mockRepo = MockMovieRepo();
    usecase = GetMovie(mockRepo);
  });

  const tid = 1;
  final tmovie =
      Movie(id: tid, language: "en", rating: 5.5, title: "black mirror");

  test("should return movie from the repository", () async {
    when(mockRepo.getMovie(tid)).thenAnswer((_) async => Right(tmovie));

    final result = await usecase.execute(tid);
    expect(result, Right(tmovie));
    verify(mockRepo.getMovie(tid));
    verifyNoMoreInteractions(mockRepo);
  });
}
