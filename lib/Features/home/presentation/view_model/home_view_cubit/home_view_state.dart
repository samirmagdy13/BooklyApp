part of 'home_view_cubit.dart';

@immutable
sealed class HomeViewState {
  const HomeViewState();

  // @override
  // List<Object> get props => [];
}

final class HomeViewInitial extends HomeViewState {}

final class HomeViewLoading extends HomeViewState {}

final class HomeViewSucsess extends HomeViewState {
  final List<BookModel> books;

  const HomeViewSucsess({required this.books});
}

final class HomeViewFailure extends HomeViewState {
  final String errMessage;

  const HomeViewFailure({required this.errMessage});
}
