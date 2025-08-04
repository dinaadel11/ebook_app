import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundcolor,
      required this.textcolor,
      this.borderRadius,
      required this.text});
  final Color backgroundcolor;
  final Color textcolor;
  final String text;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          text,
          style: Styles.textstyle16
              .copyWith(color: textcolor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
