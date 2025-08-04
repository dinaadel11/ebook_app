import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/failuer.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/data/repos/home_repo.dart';

class HomeRepoImplemntation implements HomeRepo {
  @override
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
