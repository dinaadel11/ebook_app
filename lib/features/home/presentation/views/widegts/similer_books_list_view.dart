import 'package:flutter/material.dart';
import 'package:newsapp/features/home/presentation/views/widegts/custom_book_item.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: const CustomBookImage(),
            );
          }),
    );
    ;
  }
}
