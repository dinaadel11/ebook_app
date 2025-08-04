import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/failuer.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks();
}
