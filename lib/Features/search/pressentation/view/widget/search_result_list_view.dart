import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_shimmer_widget.dart';
import '../../../../home/presentation/view/widgets/book_list_view_item.dart';
import '../../view_model/seach_view_cubit/seach_view_cubit.dart';

class SearchListViewBuilder extends StatelessWidget {
  const SearchListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeachViewCubit, SeachViewState>(
      builder: (context, state) {
        if (state is SeachViewSucsess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(books: state.books[index]),
            ),
          );
        } else if (state is SeachViewFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else if (state is SeachViewLoading) {
          return const ShimmerWidgetSeparator();
        } else {
          return const CustomErrorMessage(
            errMessage: 'Search to Free Books By Samir Magdy',
          );
        }
      },
    );
  }
}
