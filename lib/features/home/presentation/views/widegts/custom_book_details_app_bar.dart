import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 32,
            )),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined, size: 32),
        ),
      ],
    );
  }
}
