import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
