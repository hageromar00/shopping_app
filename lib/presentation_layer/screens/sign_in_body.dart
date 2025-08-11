import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/shopping_home.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_button.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_password.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_text_field.dart';

class SignInViewsBody extends StatefulWidget {
  const SignInViewsBody({super.key});

  @override
  State<SignInViewsBody> createState() => _SignInViewsBodyState();
}

class _SignInViewsBodyState extends State<SignInViewsBody> {
  String email = '', password = '';

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            onchang: (value) {
              email = value;
            },
          ),
          CustomFieldPassword(
            onchang: (value) {
              password = value;
            },
          ),
          CustomButton(
            text: 'Sign In',
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                // ScaffoldMessenger.of(
                //   context,
                // ).showSnackBar(SnackBar(content: Text('ok')));
                mydialog();
              }
              // print(email);
            },
          ),
        ],
      ),
    );
  }

  Future<void> mydialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Account sign-in successfully'),
          content: const SingleChildScrollView(),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShoppingHomePage();
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
