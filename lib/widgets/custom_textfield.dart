import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.inputType,
      this.hintText,
      this.onChanged,
      this.obSecureText = false});

  String? hintText;
  Function(String)? onChanged;
  bool? obSecureText;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obSecureText!,
      keyboardType: inputType,
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
