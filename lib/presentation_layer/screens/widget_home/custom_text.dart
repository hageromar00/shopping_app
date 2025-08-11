import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to Our Shop',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey,
      ),
    );
  }
}
