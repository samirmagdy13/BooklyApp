import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newset_state.dart';

class NewsetCubit extends Cubit<NewsetState> {
  NewsetCubit({required this.repo}) : super(NewsetInitial());
  final HomeRepo repo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetLoading());
    var result = await repo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(NewsetSucsess(books: books));
    });
  }
}
