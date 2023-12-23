import 'package:flutter/material.dart';

class TextFormStudents extends StatelessWidget {
  final String labelText;
  final TextEditingController textEditingController;
  const TextFormStudents({
    super.key, required this.labelText, required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: const TextStyle(
        fontFamily: "SF Pro",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      autofocus: true,
      // controller: widget.controller,
      cursorColor: Colors.black,
      decoration:  InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        alignLabelWithHint: false,
        labelText: labelText,
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color(0xff0D0D0D), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color(0xffe8e8e8), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xffe8e8e8), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
    );
  }
}