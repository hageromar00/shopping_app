import 'package:flutter/material.dart';

class CustomFieldPassword extends StatefulWidget {
  const CustomFieldPassword({super.key, required this.onchang, this.controller});
  final Function(String) onchang;
final  TextEditingController? controller;

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
        controller:widget.controller ,
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
          else if(value.length<6){
            return 'At least 6 characters';
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
