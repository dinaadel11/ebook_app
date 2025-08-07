import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/core/errors/failuer.dart';
import 'package:newsapp/core/utils/api_service.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/data/repos/home_repo.dart';

class HomeRepoImplemntation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplemntation(this.apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewsedBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=accountant');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } on Exception catch (e) {
          // TODO
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchSimilerBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }
}
