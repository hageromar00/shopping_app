import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.onchang});
  final Function(String) onchang;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          } else if (!value.contains('@')) {
            return 'Must include @';
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

class CustomName extends StatelessWidget {
  const CustomName({super.key, required this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
      child: TextFormField(
        controller: controller,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          labelText: 'Full Name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: (v) {
          final val = v ?? '';
          if (val.isEmpty) return 'Enter your name';
          if (!_firstLetterUppercase(val)) {
            return 'First letter must be uppercase';
          }
        },
      ),
    );
  }

  bool _firstLetterUppercase(String value) {
    if (value.isEmpty) return false;
    final first = value.characters.first;
    return first == first.toUpperCase();
  }
}
