import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.onchang});
 final Function(String) onchang;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 80, bottom: 10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
        },
      onChanged: onchang,
        decoration: InputDecoration(
          label: Text('Email'),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}