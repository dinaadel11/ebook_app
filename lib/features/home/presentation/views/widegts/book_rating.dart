import 'package:flutter/material.dart';

import 'package:newsapp/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '4.2',
          style: Styles.textstyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Styles.textstyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
