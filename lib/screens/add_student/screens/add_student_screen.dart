import 'package:flutter/material.dart';
import 'package:sportify/core/custom/custom_button.dart';
import 'package:sportify/core/custom/utils/constants.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppConst.kDarkPurple,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Icon(
                  Icons.circle_outlined,
                  size: 100,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  style: const TextStyle(
                    fontFamily: "SF Pro",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  autofocus: true,
                  // controller: widget.controller,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    alignLabelWithHint: false,
                    labelText: "Есімі",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0D0D0D), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffe8e8e8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffe8e8e8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  style: const TextStyle(
                    fontFamily: "SF Pro",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  autofocus: true,
                  // controller: widget.controller,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    alignLabelWithHint: false,
                    labelText: "Тегі",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0D0D0D), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffe8e8e8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffe8e8e8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  style: const TextStyle(
                    fontFamily: "SF Pro",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  autofocus: true,
                  // controller: widget.controller,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    alignLabelWithHint: false,
                    labelText: "Туған күні",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0D0D0D), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffe8e8e8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffe8e8e8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  text: "Жаңа шәкірт қосу",
                  onTap: () {},
                  color: const Color(0xff170c36),
                )
              ],
            ),
          ),
        ));
  }
}
