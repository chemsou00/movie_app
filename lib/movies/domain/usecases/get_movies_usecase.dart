import 'package:movies_app/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/domain/entities/media.dart';
import 'package:movies_app/core/domain/usecase/base_use_case.dart';
import 'package:movies_app/movies/domain/repository/movies_repository.dart';

class GetMoviesUseCase extends BaseUseCase<List<List<Media>>, NoParameters> {
  final MoviesRepository _baseMoviesRepository;

  GetMoviesUseCase(this._baseMoviesRepository);

  @override
  Future<Either<Failure, List<List<Media>>>> call(NoParameters p) async {
    return await _baseMoviesRepository.getMovies();
  }
}
