import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/data/repos/home_repo.dart';

part 'similerbooks_state.dart';

class SimilerbooksCubit extends Cubit<SimilerbooksState> {
  SimilerbooksCubit(this.homeRepo) : super(SimilerbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerbooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold((failure) {
      emit(SimilerbooksFaliuer(failure.errorMessage));
    }, (books) {
      emit(SimilerbooksSuccess(books));
    });
  }
}
