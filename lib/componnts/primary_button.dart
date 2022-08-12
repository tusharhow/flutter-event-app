import 'package:flutter/material.dart';

class ReusablePrimaryButton extends StatelessWidget {
  const ReusablePrimaryButton({
    Key? key,
    required this.childText,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  final String childText;
  final Function onPressed;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as VoidCallback,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width / 1.08,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: buttonColor),
        child: Center(
            child: Text(
          childText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )),
      ),
    );
  }
}
