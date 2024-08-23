import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  CustomIconWidget({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: icon,
        ),
      ),
    );
  }
}
