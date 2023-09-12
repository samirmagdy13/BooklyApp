import 'package:bookly_app/Features/home/presentation/view/widgets/book_details_item.dart';
import 'package:bookly_app/Features/home/presentation/view_model/home_view_cubit/home_view_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_model/similler_view_cubit/smiller_view_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_list_view_item.dart';

class ListViewBuilder extends StatelessWidget {
  final bool bookDetails;
  const ListViewBuilder({super.key, this.bookDetails = false});

  @override
  Widget build(BuildContext context) {
    return bookDetails
        ? BlocBuilder<SmillerViewCubit, SmillerViewState>(
            builder: (context, state) {
              if (state is SmillerViewSucsess) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: BooksDetailsItem(
                      imageUrl:
                          state.books[index].volumeInfo?.imageLinks?.thumbnail,
                    ),
                  ),
                );
              } else if (state is SmillerViewFailuer) {
                return CustomErrorMessage(errMessage: state.errMessage);
              } else {
                return const CustomLoadingIndicator();
              }
            },
          )
        : BlocBuilder<HomeViewCubit, HomeViewState>(
            builder: (context, state) {
              if (state is HomeViewSucsess) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: HomeViewItem(
                      book: state.books[index],
                      urlImage:
                          state.books[index].volumeInfo?.imageLinks?.thumbnail,
                    ),
                  ),
                );
              } else if (state is HomeViewFailure) {
                return CustomErrorMessage(errMessage: state.errMessage);
              } else {
                return const CustomLoadingIndicator();
              }
            },
          );
  }
}
