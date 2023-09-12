// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/cashed_network_image.dart';

import '../../../../../core/utils/app_router.dart';

class HomeViewItem extends StatelessWidget {
  final BookModel? book;
  const HomeViewItem({
    Key? key,
     this.book,
    required this.urlImage,
  }) : super(key: key);
  final String? urlImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.kBookDetailsView,
            extra: book,
          );
        },
        child: CashedNetworkImage(urlImage: urlImage, width: 140));
  }
}
