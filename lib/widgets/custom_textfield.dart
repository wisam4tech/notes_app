import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.verticalSize,
  });
  final String hintText;
  final double verticalSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: borderBiulder(),
          focusedBorder: borderBiulder(kPrimaryColor),
          contentPadding:
              EdgeInsets.symmetric(vertical: verticalSize, horizontal: 8),
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
