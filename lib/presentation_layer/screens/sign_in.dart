import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_button.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_password.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/custom_text_field.dart';

class SignInViews extends StatelessWidget {
   SignInViews({super.key});
    String email = '', password = '';

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
     return Form(
      key: formkey,
      child: Column(
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
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('ok')));
                // mydiolog(); must statefullwidget
              }
              print(email);
            },
          ),
        ],
      ),
    );
  }
}