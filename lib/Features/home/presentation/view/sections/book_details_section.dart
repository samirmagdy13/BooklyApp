// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../widgets/book_rating.dart';
import '../widgets/books_action.dart';
import '../widgets/home_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel book;

  const BookDetailsSection({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HomeViewItem(
            urlImage: book.volumeInfo?.imageLinks?.thumbnail,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: Text(
              book.volumeInfo!.title!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30.copyWith(
                fontFamily: kGtSectraFine,
              ),
            ),
          ),
          //SizedBox(height: 5.h),
          Text(
            book.volumeInfo!.authors![0],
            textAlign: TextAlign.center,
            style: Styles.textStyle18.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            count: book.volumeInfo!.pageCount!,
          ),
           BooksAction(book: book),
        ],
      ),
    );
  }
}
