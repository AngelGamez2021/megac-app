import 'package:flutter/material.dart';

class CustonTextField extends StatelessWidget {
  const CustonTextField(
      {super.key,
      required this.hint,
      required this.obscuredText,
      // required this.controller,
      // required this.keyboardType = TextInputType.text
      required this.cursorColor,
      required this.borderFocusColor,
      required this.labelColor,
      required this.icon});

  final String hint;
  final bool obscuredText;
  // final TextEditingController? controller;
  // final TextInputType keyboardType;
  final Color cursorColor;
  final Color borderFocusColor;
  final Color labelColor;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      cursorColor: cursorColor,
      obscureText: obscuredText,
      // keyboardType: keyboardType,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderFocusColor)),
          labelText: hint,
          labelStyle: TextStyle(color: labelColor),
          filled: true,
          fillColor: const Color.fromARGB(255, 209, 209, 209).withOpacity(0.5),
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }
}
