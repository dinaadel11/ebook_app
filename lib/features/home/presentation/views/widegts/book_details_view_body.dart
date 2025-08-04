import 'package:flutter/material.dart';
import 'package:newsapp/features/home/presentation/views/widegts/book_details_section.dart';
import 'package:newsapp/features/home/presentation/views/widegts/similer_books_section.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilerBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
