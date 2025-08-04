import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/styles.dart';
import 'package:newsapp/features/home/presentation/views/widegts/similer_books_list_view.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}
