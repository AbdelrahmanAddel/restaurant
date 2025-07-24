import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';

class ByLoggingInOr extends StatelessWidget {
  const ByLoggingInOr({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: AppStrings.byLoggingInOr,
        style: AppTextStyle.interBlackRegular10,
        children: [
          TextSpan(
            text: AppStrings.termsAndConditions,
            style: AppTextStyle.interBlackRegular10.copyWith(
              color: AppColors.greenColor,
            ),
          ),
          TextSpan(
            text: AppStrings.and,
            style: AppTextStyle.interBlackRegular10,
          ),
          TextSpan(
            text: AppStrings.privacyPolicy,
            style: AppTextStyle.interBlackRegular10.copyWith(
              color: AppColors.greenColor,
            ),
          ),
        ],
      ),
    );
  }
}
