import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/custom_button.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/coach_students/logic/bloc/coach_students_bloc.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/bloc/competition_st_bloc.dart';
import 'package:sportify/screens/students/screens/competition_students/widgets/students_list_kg.dart';

class CoachStudentsScreen extends StatefulWidget {
  const CoachStudentsScreen({super.key});

  @override
  State<CoachStudentsScreen> createState() => _CoachStudentsScreenState();
}

class _CoachStudentsScreenState extends State<CoachStudentsScreen> {
  List<String> kg = [
    "44kg",
    "48kg",
    "52kg",
    "56kg",
    "60kg",
    "64kg",
    "68kg",
    "72kg",
    "76kg",
  ];
  int currentYears = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: AppConst.kDarkPurple),
        backgroundColor: AppConst.kDarkPurple,
        body: BlocProvider(
          create: (context) =>
              sl<CoachStudentsBloc>()..add(CoachStudentsList()),
          child: BlocBuilder<CoachStudentsBloc, CoachStudentsState>(
            builder: (context, state) {
              if (state is CoachStudentsLoading) {
                return const CircularProgressIndicator();
              }
              if (state is CoachStudentsSuccess) {
                return ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListView.builder(
                        itemCount: state.coachStudentsList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          // int age =
                          //     calculateAge(state.response.data[index].dateOfBirth);

                          return Column(
                            children: [
                              Ink(
                                color: AppConst.kDarkPurple,
                                child: ListTile(
                                  leading: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: AppConst.kGrey,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "${state.coachStudentsList[index].image}",
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                  title: ReusableText(
                                    text:
                                        "${state.coachStudentsList[index].firstName} ${state.coachStudentsList[index].lastName}",
                                    style: appstyle(
                                        12, AppConst.kWhite, FontWeight.w600),
                                  ),
                                  subtitle: Row(
                                    children: [
                                      ReusableText(
                                          text:
                                              "${state.coachStudentsList[index].club!.name}",
                                          style: appstyle(
                                              9,
                                              const Color(0xFFC0C0C0),
                                              FontWeight.w400)),
                                      Image.network(
                                        '${state.coachStudentsList[index].club!.logo}',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Divider(
                                  height: 0,
                                  color: AppConst.kGrey,
                                ),
                              ),
                            ],
                          );
                        }),
                  ],
                );
              }
              return const Offstage();
            },
          ),
        ));
  }

  int calculateAge(DateTime birthdate) {
    DateTime currentDate = DateTime.now();

    int age = currentDate.year - birthdate.year;

    // Adjust age based on the month and day of birth
    if (currentDate.month < birthdate.month ||
        (currentDate.month == birthdate.month &&
            currentDate.day < birthdate.day)) {
      age--;
    }

    return age;
  }

  String determineAgeCategory(int age) {
    if (age >= 6 && age <= 7) {
      return "6-7";
    } else if (age >= 8 && age <= 9) {
      return "8-9";
    } else if (age >= 10 && age <= 11) {
      return "10-11";
    } else if (age >= 12 && age <= 13) {
      return "12-13";
    } else if (age >= 14 && age <= 15) {
      return "14-15";
    } else if (age >= 16 && age <= 17) {
      return "16-17";
    } else {
      return "Unknown Category";
    }
  }

  void _showAlertDialog(BuildContext context, String image, String fullName,
      int age, String id, String studentId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return BlocListener<CompetitionStBloc, CompetitionStState>(
              listener: (context, state) {
                if (state is RegisterStudentSuccess) {
                  setState(() {
                    context
                        .read<CompetitionStBloc>()
                        .add(GetCompetitionStEvent(id));
                  });
                  Navigator.pop(context);
                }
              },
              child: AlertDialog(
                backgroundColor: AppConst.kWhite,
                content: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: AppConst.kGrey,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                  "http://77.243.80.52:8000${image}",
                                ),
                                fit: BoxFit.fill)),
                      ),
                      const HeightSpacer(height: 8),
                      ReusableText(
                          text: fullName,
                          style: appstyle(
                              16, AppConst.kLightPurple, FontWeight.w600)),
                      const HeightSpacer(height: 8),
                      ReusableText(
                          text: "$age жас",
                          style: appstyle(
                              12, AppConst.kLightPurple, FontWeight.w700)),
                      const HeightSpacer(height: 8),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: kg.length,
                          shrinkWrap: true,
                          itemBuilder: (ctx, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentYears = index;
                                });
                              },
                              child: StudentKg(
                                current: currentYears,
                                list: kg,
                                index: index,
                                fontSize: 12,
                              ),
                            );
                          }),
                      const HeightSpacer(height: 8),
                      CustomButton(
                        text: 'Шәкіртті тіркеу',
                        onTap: () {
                          log("id: $id");
                          log("studentId: $studentId");
                          log(determineAgeCategory(age));
                          log(kg[currentYears]);
                          context.read<CompetitionStBloc>().add(
                              RegisterStudentEvent(
                                  id: id,
                                  studentId: studentId,
                                  age: determineAgeCategory(age),
                                  weight: kg[currentYears]));
                        },
                        color: AppConst.kDarkPurple,
                        borderRadius: 10,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
