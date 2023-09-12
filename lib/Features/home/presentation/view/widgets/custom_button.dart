// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    required this.borderRadius,
    required this.backGroundColor,
    required this.textColor,
    required this.text,
     this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backGroundColor,
      //elevation: 20,
      height: 40.h,
      //minWidth: 500,
      textColor: backGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
