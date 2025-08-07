import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/core/utils/assets.dart';
import 'package:newsapp/core/utils/styles.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/presentation/views/widegts/book_rating.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_book_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookdetailsview');
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: (bookModel.volumeInfo.imageLinks!.thumbnail)),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title ?? 'Harry Botter',
                      style: GoogleFonts.ebGaramond(
                          fontSize: 20, fontWeight: FontWeight.normal),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    (bookModel.volumeInfo.authors?[0]) ?? 'Harry boter',
                    style: Styles.textstyle14
                        .copyWith(color: const Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textstyle14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.pageCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
