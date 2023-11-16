import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  final String? prefixIconSvg;
  final FocusNode? focusNode;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.maxLines,
      this.prefixIconSvg,
      this.focusNode})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      maxLines: widget.maxLines,
      validator: widget.validator,
      style: const TextStyle(
        fontFamily: "SF Pro",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      autofocus: true,
      controller: widget.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: widget.controller.text.isEmpty
            ? null
            : GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/svg/icon_clean.svg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                onTap: () {
                  setState(() {
                    widget.controller.clear();
                    FocusScope.of(context).unfocus();
                  });
                },
              ),
        prefixIcon: widget.controller.text.isNotEmpty
            ? SvgPicture.asset(
                widget.prefixIconSvg!,
                color: widget.focusNode!.hasFocus
                    ? const Color(0xFF0D0D0D)
                    : const Color(0xFFA1A1A1),
                fit: BoxFit.scaleDown,
              )
            : null,
        alignLabelWithHint: false,
        labelText: widget.hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff0D0D0D), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffe8e8e8), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffe8e8e8), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
    );
  }
}
