import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/sign_in_body.dart';

class SignInViews extends StatelessWidget {
  const SignInViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: SignInViewsBody(),
    );
  }
}
