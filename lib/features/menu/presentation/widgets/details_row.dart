import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';

Widget detailsRow({required String value, required String name}) {
  return Row(
    children: [
      Flexible(
        flex: 2,
        child: Text(
          '$name :',
          style: AppTextStyle.interBlack16.copyWith(fontSize: 13.sp),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      horizontalSpace(10),
      Expanded(
        flex: 3,
        child: Text(
          value,
          style: AppTextStyle.interBlack16.copyWith(fontSize: 13.sp),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
