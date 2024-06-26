import 'package:movies_app/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/domain/entities/media.dart';
import 'package:movies_app/core/domain/usecase/base_use_case.dart';
import 'package:movies_app/movies/domain/repository/movies_repository.dart';

class GetAllPopularMoviesUseCase extends BaseUseCase<List<Media>, int> {
  final MoviesRepository _baseMoviesRepository;

  GetAllPopularMoviesUseCase(this._baseMoviesRepository);

  @override
  Future<Either<Failure, List<Media>>> call(int p) async {
    return await _baseMoviesRepository.getAllPopularMovies(p);
  }
}
