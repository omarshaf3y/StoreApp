import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.hintText, this.onChanged, this.obSecureText = false});

  String? hintText;
  Function(String)? onChanged;
  bool? obSecureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obSecureText!,
      style: const TextStyle(
        color: Colors.white,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
