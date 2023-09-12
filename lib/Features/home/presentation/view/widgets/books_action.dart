import 'package:flutter/material.dart';
import '../../../../../core/utils/function/launch_url.dart';
import '../../../../../core/models/book_model/book_model.dart';
import 'custom_button.dart';

class BooksAction extends StatelessWidget {
  final BookModel book;

  const BooksAction({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              text: 'Free',
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              text: 'preview',
              onPressed: () {
                launchCustomUrl(context, book.volumeInfo!.previewLink!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
