part of 'smiller_view_cubit.dart';

@immutable
sealed class SmillerViewState {
  const SmillerViewState();
}

final class SmillerViewInitial extends SmillerViewState {}

final class SmillerViewLoading extends SmillerViewState {}

final class SmillerViewFailuer extends SmillerViewState {
  final String errMessage;

  const SmillerViewFailuer({required this.errMessage});
}

final class SmillerViewSucsess extends SmillerViewState {
  final List<BookModel> books;

  const SmillerViewSucsess({required this.books});
}
