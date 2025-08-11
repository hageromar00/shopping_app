import 'package:flutter/material.dart';

class CustomConfirmPass extends StatelessWidget {
  const CustomConfirmPass({super.key,required this.controller,required this.passController});
  // final TextEditingController? controller;
  final TextEditingController? controller, passController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: (v) {
          if (v != passController!.text) return 'Passwords do not match';
          return null;
        },
      ),
    );
  }
}
