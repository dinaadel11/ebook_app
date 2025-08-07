import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/features/home/presentation/views/widegts/book_rating.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: 'https://m.media-amazon.com/images/I/81q77Q39nEL.jpg',
          ),
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
          height: 13,
        ),
        const BookRating(
          rating: 5,
          count: 240,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 13,
        ),
      ],
    );
  }
}
