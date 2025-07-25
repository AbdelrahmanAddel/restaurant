import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/di/app_dependency_injection.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/card_content_datails.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/details_row.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.menu,
    required this.isAddedToCard,
  });
  final MenuModel menu;
  final bool isAddedToCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CachedNetworkImage(
              imageUrl: menu.image ?? '',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              fit: BoxFit.contain,
              width: 128.w,
              height: 104.h,
            ),
          ),
          verticalSpace(12),
          CardContentDetails(menu: menu),
          verticalSpace(5),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () async {
                  getIt<MenuCubit>().addOrRemoveItemFromCard(menu);
                },
                icon: Icon(
                  isAddedToCard
                      ? Icons.remove_shopping_cart
                      : Icons.add_shopping_cart,
                  color: isAddedToCard ? Colors.red : Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
