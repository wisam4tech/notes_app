import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.onTap,
      required this.buttonColor,
      required this.textColor});
  final String text;
  final Color buttonColor;
  final Color textColor;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
