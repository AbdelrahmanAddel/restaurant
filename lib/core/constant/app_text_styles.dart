import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';

abstract class AppTextStyle {
  static TextStyle interBlack16 = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );
  static TextStyle interBlackBold24 = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w900,
    fontFamily: 'Inter',
  );
  static TextStyle interWhiteBold14 = TextStyle(
    color: AppColors.whiteGreenColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w900,
    fontFamily: 'Inter',
  );
  static TextStyle interBlackRegular10 = TextStyle(
    color: AppColors.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );
}
