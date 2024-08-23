import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: borderBiulder(),
          focusedBorder: borderBiulder(kPrimaryColor),
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          hintText: hintText,
        ),
      ),
    );
  }

  OutlineInputBorder borderBiulder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white, width: 1),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
