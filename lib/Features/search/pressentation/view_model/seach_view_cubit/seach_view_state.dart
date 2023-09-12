part of 'seach_view_cubit.dart';

@immutable
sealed class SeachViewState {
  const SeachViewState();
}

final class SeachViewInitial extends SeachViewState {}

final class SeachViewLoading extends SeachViewState {}

final class SeachViewFailure extends SeachViewState {
  final String errMessage;

  const SeachViewFailure({required this.errMessage});
}

final class SeachViewSucsess extends SeachViewState {
  final List<BookModel> books;

  const SeachViewSucsess({required this.books});
}
