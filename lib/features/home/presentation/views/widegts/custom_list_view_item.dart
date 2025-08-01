import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: const DecorationImage(image: AssetImage(AssetsData.test)),
          ),
        ),
      ),
    );
  }
}
