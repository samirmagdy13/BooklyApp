// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'smiller_view_state.dart';

class SmillerViewCubit extends Cubit<SmillerViewState> {
  final HomeRepo repo;

  SmillerViewCubit({required this.repo}) : super(SmillerViewInitial());

  Future<void> fetchSmillerBooks({required String catogery}) async {
    emit(SmillerViewLoading());
    var result = await repo.fetchNewseSimillertBooks(catogery: catogery);
    result.fold((failure) {
      emit(SmillerViewFailuer(errMessage: failure.errMessage));
    }, (books) {
      emit(SmillerViewSucsess(books: books));
    });
  }
}
