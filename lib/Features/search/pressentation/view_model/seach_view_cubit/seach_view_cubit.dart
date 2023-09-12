import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/repo/search_repo.dart';
import 'package:meta/meta.dart';
import '../../../../../core/models/book_model/book_model.dart';

part 'seach_view_state.dart';

class SeachViewCubit extends Cubit<SeachViewState> {
  final SearchRepo repo;

  SeachViewCubit({required this.repo}) : super(SeachViewInitial());

  Future<void> fetchSearchViewBooks({required String searchName}) async {
    emit(SeachViewLoading());
    var result = await repo.fetchSearchViewBooks(searchName: searchName);
    result.fold((failure) {
      emit(SeachViewFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SeachViewSucsess(books: books));
    });
  }
}
