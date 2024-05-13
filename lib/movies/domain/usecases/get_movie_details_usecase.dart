import 'package:movies_app/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/domain/entities/media_details.dart';
import 'package:movies_app/core/domain/usecase/base_use_case.dart';
import 'package:movies_app/movies/domain/repository/movies_repository.dart';

class GetMoviesDetailsUseCase extends BaseUseCase<MediaDetails, int> {
  final MoviesRepository _baseMoviesRepository;

  GetMoviesDetailsUseCase(this._baseMoviesRepository);

  @override
  Future<Either<Failure, MediaDetails>> call(int p) async {
    return await _baseMoviesRepository.getMovieDetails(p);
  }
}
