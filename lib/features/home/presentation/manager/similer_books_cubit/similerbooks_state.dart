part of 'similerbooks_cubit.dart';

abstract class SimilerbooksState extends Equatable {
  const SimilerbooksState();

  @override
  List<Object> get props => [];
}

class SimilerbooksInitial extends SimilerbooksState {}

class SimilerbooksLoading extends SimilerbooksState {}

class SimilerbooksSuccess extends SimilerbooksState {
  final List<BookModel> books;

  const SimilerbooksSuccess(this.books);
}

class SimilerbooksFaliuer extends SimilerbooksState {
  final String errMessage;
  const SimilerbooksFaliuer(this.errMessage);
}
