import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';
import 'package:intern_restaurant/core/constant/assets.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/features/auth/presentation/widgets/authentication_view_buttoms.dart';
import 'package:intern_restaurant/features/auth/presentation/widgets/by_logging_in_or.dart';

class AuthenticationViewBody extends StatelessWidget {
  const AuthenticationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.0.w),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(135),
              SvgPicture.asset(ImageAssets.imagesSvgAuthenticationScreenImage),
              verticalSpace(55),
              Text(AppStrings.loginTitle, style: AppTextStyle.interBlackBold24),
              verticalSpace(8),
              Text(
                textAlign: TextAlign.center,
                AppStrings.loginSubTitle,
                style: AppTextStyle.interBlack16,
              ),
              verticalSpace(95),
              AuthenticationViewButtons(),
              verticalSpace(16),
              ByLoggingInOr(),
            ],
          ),
        ),
      ),
    );
  }
}
