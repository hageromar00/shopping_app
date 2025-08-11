import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/sign_up_body.dart';

class SignUpViews extends StatelessWidget {
  const SignUpViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: SignUpBody(),
    );
  
  }
}