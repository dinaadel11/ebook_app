import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/home/presentation/manager/similer_books_cubit/similerbooks_cubit.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_book_item.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_error.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_loading_indicator.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerbooksCubit, SimilerbooksState>(
      builder: (context, state) {
        if (state is SimilerbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: const CustomBookImage(
                        imageUrl:
                            'https://m.media-amazon.com/images/I/81q77Q39nEL.jpg'),
                  );
                }),
          );
        } else if (state is SimilerbooksFaliuer) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
