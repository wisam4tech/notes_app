import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxLines;
  void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
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
