import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: (Styles.textstyle18),
      ),
    );
  }
}
