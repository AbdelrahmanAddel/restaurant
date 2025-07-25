import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/helpers/navigation_extension.dart';

class NoItemInCart extends StatelessWidget {
  const NoItemInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('No Item In The Card'),
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Go To Menu'),
          ),
        ],
      ),
    );
  }
} 