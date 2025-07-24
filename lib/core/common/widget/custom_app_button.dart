import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.textColor,
  });
  final String title;
  final Function()? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 256.w,
        height: 49.h,
        decoration: BoxDecoration(
          color: color ?? AppColors.greenColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.interWhiteBold14.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
