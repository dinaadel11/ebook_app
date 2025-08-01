import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/assets.dart';

class FutereListViewItem extends StatelessWidget {
  const FutereListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: const DecorationImage(image: AssetImage(AssetsData.test)),
        ),
      ),
    );
  }
}
