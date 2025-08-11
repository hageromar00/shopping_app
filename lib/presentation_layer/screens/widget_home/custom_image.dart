import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/welcome.png',
          width: 170,
          height: 110,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        Image.network(
          'https://i.postimg.cc/D0ZnkWDb/undraw-shopping-app-b80f.png',
          width: 110,
          height: 110,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
