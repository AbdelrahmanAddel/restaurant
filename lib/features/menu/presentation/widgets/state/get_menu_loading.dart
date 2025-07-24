import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Widget getMenuLoading() {
  return GridView.builder(
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.7,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
    ),
    itemCount: 8,
    itemBuilder: (context, index) {
      return Shimmer(
        child: Container(
          height: 196.h,
          width: 148.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    },
  );
}
