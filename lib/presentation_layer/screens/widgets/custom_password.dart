import 'package:flutter/material.dart';

class CustomFieldPassword extends StatefulWidget {
  const CustomFieldPassword({super.key, required this.onchang});
  final Function(String) onchang;

  @override
  State<CustomFieldPassword> createState() => _CustomFieldPasswordState();
}

class _CustomFieldPasswordState extends State<CustomFieldPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 10),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
        },
        onChanged: widget.onchang,

        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              visible();
            },
            icon: obscureText
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
          ),
          label: Text('Password'),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  void visible() {
    obscureText = !obscureText;
    setState(() {});
  }
}
