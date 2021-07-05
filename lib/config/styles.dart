import 'package:clean_architechture/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle get label1 {
    return TextStyle(
      fontSize: 40.sp,
    );
  }

  static TextStyle get label2 {
    return TextStyle(
      fontSize: 36.sp,
    );
  }

  static TextStyle get label3 {
    return TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle get label4 {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle get label5 {
    return TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get label6 {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get label7 {
    return TextStyle(
      fontSize: 12.sp,
    );
  }

  static TextStyle get informationLabel {
    return TextStyle(
      fontSize: 14.sp,
      color: Colors.grey.shade500,
    );
  }

  static TextStyle get verifiedLabel {
    return TextStyle(
      fontSize: 14.sp,
      color: Colors.greenAccent,
    );
  }

  static TextStyle get buttonLabel {
    return TextStyle(
      fontSize: 20.sp,
      color: AppColors.orange,
    );
  }

  static TextStyle get username {
    return TextStyle(
      fontSize: 18.sp,
      color: Colors.orange,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle get memberID {
    return TextStyle(
      fontSize: 15.sp,
      color: Colors.orange,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle focusBottomBarTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.orange,
  );
  static TextStyle unFocusBottomBarTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );

  static TextStyle get activeStatus {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.activeColor,
    );
  }

  static TextStyle get notActiveStatus {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.notActiveColor,
    );
  }
}
