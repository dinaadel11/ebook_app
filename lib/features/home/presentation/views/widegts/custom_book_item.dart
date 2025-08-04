import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(17),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.test)),
          ),
        ),
      ),
    );
  }
}
