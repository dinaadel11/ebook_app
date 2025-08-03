import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/core/widget/custom_button.dart';
import 'package:newsapp/features/home/presentation/views/widegts/book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: GoogleFonts.ebGaramond(
                fontSize: 30, fontWeight: FontWeight.normal),
            maxLines: 2,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: GoogleFonts.ebGaramond(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 182, 181, 181)),
            maxLines: 2,
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          BooksAction(),
        ],
      ),
    );
  }
}
