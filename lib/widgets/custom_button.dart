// ignore: unused_import
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textButton,
      // required this.onPressed,
      required this.colorButton,
      required this.colorText});

  final String textButton;
  // final Function onPressed;
  final Color colorButton;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   onPressed();
      // },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 88, 3, 3),
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
            ),
          ],
        ),
        child: Text(
          textButton,
          style: TextStyle(
              color: colorText, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
