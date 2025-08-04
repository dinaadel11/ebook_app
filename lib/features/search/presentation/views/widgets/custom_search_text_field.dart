import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildoutlineinputborder(),
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
    );
  }

  OutlineInputBorder buildoutlineinputborder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
