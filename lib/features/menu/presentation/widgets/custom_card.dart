import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/card_content.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.menu,
    required this.isAddedToCard,
  });
  final MenuModel menu;
  final bool isAddedToCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196.h,
      width: 148.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(1, 10),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CardContent(menu: menu, isAddedToCard: isAddedToCard),
    );
  }
}
