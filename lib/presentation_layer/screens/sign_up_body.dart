import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/shopping_home.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_button.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_confirm_pass.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_password.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_text_field.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String email = '', password = '';

  final GlobalKey<FormState> formkey = GlobalKey();
  final _nameCtrl = TextEditingController();
  final passctrl = TextEditingController();
  final confctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomName(controller: _nameCtrl),
          CustomTextField(
            onchang: (value) {
              email = value;
            },
          ),
          CustomFieldPassword(
            controller: passctrl,
            onchang: (value) {
              password = value;
            },
          ),
          CustomConfirmPass(controller: confctrl, passController: passctrl),
          CustomButton(
            text: 'Sign Up',
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
          title: const Text('ccount created successfully'),
          content: const SingleChildScrollView(),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
                 Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => ShoppingHomePage(), // لازم تعرف الصفحة الجديدة
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 700),
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
