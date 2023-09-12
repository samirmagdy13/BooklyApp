// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookly_app/Features/search/pressentation/view/widget/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTtextField(),
          SizedBox(height: 20.h),
          const Text('Search Result', style: Styles.textStyle18),
          SizedBox(height: 10.h),
          const Expanded(
            child: SearchListViewBuilder(),
          ),
        ],
      ),
    );
  }
}
