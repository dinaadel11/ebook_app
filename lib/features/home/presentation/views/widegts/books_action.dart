import 'package:flutter/material.dart';
import 'package:newsapp/core/widget/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundcolor: Colors.white,
            text: '19.99',
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          )),
          Expanded(
              child: CustomButton(
            backgroundcolor: Color(0xffEF8362),
            textcolor: Colors.white,
            text: 'Free Preview',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          )),
        ],
      ),
    );
  }
}
