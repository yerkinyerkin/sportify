import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sportify/core/custom/custom_button.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/add_student/logic/bloc%20/add_student_bloc.dart';
import 'package:sportify/screens/add_student/widgets/text_form_student.dart';
import 'package:sportify/screens/main/screens/main_screen_token.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  File? selectedImage;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController achievementController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    birthdayController.dispose();
    achievementController.dispose();
    locationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppConst.kDarkPurple,
        ),
        body: BlocProvider(
          create: (context) => sl<AddStudentBloc>(),
          child: BlocListener<AddStudentBloc, AddStudentState>(
            listener: (context, state) {
              if (state is AddStudentLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is AddStudentFailure) {
                Center(
                  child: Text(state.response.toString()),
                );
              }
              if (state is AddStudentSuccess) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => MainScreenToken(index: 3)));
              }
            },
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        _pickImage();
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppConst.kGrey),
                        child: selectedImage != null
                            ? ClipOval(
                                child: Image.file(
                                  selectedImage!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : const Icon(
                                Icons.add_a_photo,
                                size: 40,
                                color: Color.fromARGB(255, 96, 95, 95),
                              ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormStudents(
                      labelText: "Есімі",
                      textEditingController: firstNameController,
                    ),
                    const SizedBox(height: 16),
                    TextFormStudents(
                        labelText: "Тегі",
                        textEditingController: lastNameController),
                    const SizedBox(height: 16),
                    TextFormStudents(
                        labelText: "Туған күні",
                        textEditingController: birthdayController),
                    const SizedBox(height: 16),
                    CustomButton(
                      text: "Жаңа шәкірт қосу",
                      onTap: () {
                        context.read<AddStudentBloc>().add(AddStudentsCommon(
                              image: selectedImage!,
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              dateOfBirth: birthdayController.text,
                            ));
                      },
                      color: const Color(0xff170c36),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }
}
