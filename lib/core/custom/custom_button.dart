// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  Color? color;
  Color? borderColor;
  Color? textColor;
  double? heigtButton;
  double? borderRadius;

  CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.borderColor,
    this.textColor,
    this.heigtButton,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onTap,
      
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromHeight(50),
        elevation: 0,
        primary: color,
        
        minimumSize: Size(double.infinity,heigtButton?? 48),
        shape: RoundedRectangleBorder(
          side: borderColor!=null? BorderSide(
                  width: 1.0,
                  color: borderColor!,
                ):BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius?? 0.0),
           // <-- Radius
        ),
        
      ),
      child: Text(text,
          style:  TextStyle(
            letterSpacing: 1.25,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textColor ?? Colors.white,
          )),
    );
  }
}