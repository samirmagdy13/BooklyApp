// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CashedNetworkImage extends StatelessWidget {
  final String? urlImage;
  final double width;
  const CashedNetworkImage({
    Key? key,
    required this.urlImage,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        width: width.w,
        imageUrl: urlImage ??
            'https://www.theinsaneapp.com/wp-content/uploads/2023/03/Flutter-For-Beginners-2nd-Edition-PDF.jpg',
        // placeholder: (context, url) =>const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
