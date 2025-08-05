import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_error.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_loading_indicator.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CustomBookImage();
                }),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
