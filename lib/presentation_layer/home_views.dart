import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/sign_in.dart';
import 'package:shopping_app/presentation_layer/screens/sign_up.dart';
import 'package:shopping_app/presentation_layer/screens/widget_home/custom_button.dart';
import 'package:shopping_app/presentation_layer/screens/widget_home/custom_image.dart';
import 'package:shopping_app/presentation_layer/screens/widget_home/custom_text.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImage(),
                const SizedBox(height: 20),
                CustomText(),
                const SizedBox(height: 28),
                CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpViews();
                        },
                      ),
                    );
                  },
                  text: 'Sign Up',
                ),
                const SizedBox(height: 10),
                CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInViews();
                        },
                      ),
                    );
                  },
                  text: 'Sign In',
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
