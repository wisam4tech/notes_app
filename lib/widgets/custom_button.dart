import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    this.onTap,
    required this.buttonColor,
    required this.textColor,
    this.isLoading = false,
  });
  final String text;
  final Color buttonColor;
  final Color textColor;
  void Function()? onTap;
  bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, bottom: 32),
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Center(
            child: isLoading
                ? CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    text,
                    style: TextStyle(fontSize: 18, color: textColor),
                  ),
          ),
        ),
      ),
    );
  }
}
