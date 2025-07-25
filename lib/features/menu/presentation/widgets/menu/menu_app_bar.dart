import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';

PreferredSizeWidget? menuViewAppBar() {
  return AppBar(
    title: Text(
      AppStrings.menu,
      style: AppTextStyle.interBlack16.copyWith(
        fontSize: 25.sp,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    backgroundColor: AppColors.greenColor,
  );
}
