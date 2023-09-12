// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../sections/book_details_section.dart';
import '../sections/list_view_section.dart';
import 'custom_book_detail_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book;

  const BookDetailsViewBody({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          BookDetailsSection(book: book),
          const Expanded(child: SizedBox()),
          const ListViewSection(),
        ],
      ),
    );
  }
}
