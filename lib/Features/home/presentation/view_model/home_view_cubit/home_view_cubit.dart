import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit({required this.repo}) : super(HomeViewInitial());
  final HomeRepo repo;

  Future<void> fetchHomeViewBooks() async {
    emit(HomeViewLoading());
    var result = await repo.fetchHomeViewBooks();
    result.fold((failure) {
      emit(HomeViewFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(HomeViewSucsess(books: books));
    });
  }
}
