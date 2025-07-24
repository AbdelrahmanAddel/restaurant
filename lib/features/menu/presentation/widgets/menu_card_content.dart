import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/details_row.dart';

class MenuCardContent extends StatelessWidget {
  const MenuCardContent({super.key, required this.menu});
  final MenuModel menu;

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
          detailsRow(name: 'Name', value: menu.name ?? ''),
          verticalSpace(5),
          detailsRow(name: 'Price', value: '${menu.price} \$'),
          verticalSpace(5),
          detailsRow(name: 'Description', value: menu.description ?? ''),
          verticalSpace(5),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
