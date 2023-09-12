// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/widgets/cashed_network_image.dart';

class BooksDetailsItem extends StatelessWidget {
  final String? imageUrl;

  const BooksDetailsItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CashedNetworkImage(urlImage: imageUrl, width: 75);
  }
}
