import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image:
                    const DecorationImage(image: AssetImage(AssetsData.test)),
              ),
            ),
          ),
          Column(
            children: [
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}
