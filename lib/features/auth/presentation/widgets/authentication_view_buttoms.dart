import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/common/widget/custom_app_button.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/helpers/navigation_extension.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';

class AuthenticationViewButtons extends StatelessWidget {
  const AuthenticationViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppButton(
          onTap: () => context.push(RoutesStrings.register),
          title: AppStrings.createAccount,
        ),
        verticalSpace(16),
        CustomAppButton(
          onTap: () => context.push(RoutesStrings.login),
          title: AppStrings.login,
          color: AppColors.whiteGreenColor,
          textColor: AppColors.emeraldGreenColor,
        ),
      ],
    );
  }
}
