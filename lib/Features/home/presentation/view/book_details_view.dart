// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/Features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:bookly_app/Features/home/presentation/view_model/similler_view_cubit/smiller_view_cubit.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel book;
  const BookDetailsView({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SmillerViewCubit>(context).fetchSmillerBooks(
      catogery: widget.book.volumeInfo!.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(book: widget.book),
      ),
    );
  }
}
