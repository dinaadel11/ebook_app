import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/styles.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Text(
            'Best Seller',
            style: Styles.textstyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
