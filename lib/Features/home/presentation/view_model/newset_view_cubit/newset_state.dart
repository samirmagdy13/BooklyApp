part of 'newset_cubit.dart';

@immutable
sealed class NewsetState {
  const NewsetState();
}

final class NewsetInitial extends NewsetState {}

final class NewsetLoading extends NewsetState {}

final class NewsetSucsess extends NewsetState {
  final List<BookModel> books;

  const NewsetSucsess({required this.books});
}

final class NewsetFailure extends NewsetState {
  final String errMessage;

  const NewsetFailure({required this.errMessage});
}
