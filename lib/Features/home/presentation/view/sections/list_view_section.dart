import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import '../widgets/home_list_view_builder.dart';

class ListViewSection extends StatelessWidget {
  const ListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          height: 100.h,
          child: const ListViewBuilder(
            bookDetails: true,
          ),
        ),
      ],
    );
  }
}
