import 'package:bookly_app/Features/home/presentation/view_model/newset_view_cubit/newset_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_shimmer_widget.dart';
import 'book_list_view_item.dart';

class BookListViewBuilder extends StatelessWidget {
  const BookListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetCubit, NewsetState>(
      builder: (context, state) {
        if (state is NewsetSucsess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: BookListViewItem(books: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewsetFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorMessage(errMessage: state.errMessage));
        } else {
          return const SliverFillRemaining(child: ShimmerWidgetSeparator());
        }
      },
    );
  }
}
