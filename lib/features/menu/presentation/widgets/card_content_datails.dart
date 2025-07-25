import 'package:flutter/material.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/details_row.dart';

class CardContentDetails extends StatelessWidget {
  const CardContentDetails({super.key, required this.menu});
  final MenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        detailsRow(name: 'Name', value: menu.name ?? ''),
        detailsRow(name: 'Price', value: '${menu.price} \$'),
        detailsRow(name: 'Description', value: menu.description ?? ''),
      ],
    );
  }
}
