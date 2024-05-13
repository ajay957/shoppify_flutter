import 'package:flutter/material.dart';
class ActionButton extends StatelessWidget {
  const ActionButton ({
    super.key,
    required this.buttonBgColor,
    required this.buttonTextColor,
    required this.buttonText,
    required this.ontap,
  });

  final Color buttonBgColor;
  final Color buttonTextColor;
  final String buttonText;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonBgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}