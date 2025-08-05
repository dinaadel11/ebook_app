import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/data/repos/home_repo.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatuerBooks() async {
    emit(NewsBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewsBooksSuccess(books));
    });
  }
}
