import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/divider_container.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/students/screens/registered_students.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

List<String> _sportList = [
  "Каратэ",
];

class _StudentsScreenState extends State<StudentsScreen> {
  String dropdownValue = _sportList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConst.kLightPurple,
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.arrow_drop_down_rounded,
                  color: AppConst.kWhite,
                ),
                elevation: 16,
                dropdownColor: AppConst.kDarkPurple,
                style: appstyle(15, AppConst.kBlack, FontWeight.w600),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: _sportList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: appstyle(15, AppConst.kWhite, FontWeight.w600),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: AppConst.kWhite,
                ))
          ],
          backgroundColor: AppConst.kDarkPurple,
        ),
        body: BlocProvider(
          create: (context) => sl<CompetitionBloc>()..add(GetCompetition("")),
          child: BlocBuilder<CompetitionBloc, CompetitionState>(
            builder: (context, state) {
              if (state is CompetitionInitial) {
                return const Text("Competition Initial");
              }
              if (state is CompetitionLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppConst.kWhite,
                ));
              }

              if (state is CompetitionSuccess) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ListView.builder(
                      itemCount: state.response.data.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: AppConst.kDarkPurple,
                          child: Column(
                            children: [
                              const DividerContainer(),
                              const HeightSpacer(height: 4),
                              InkWell(
                                onTap: () {
                                  log("id: ${state.response.data[index].id}");

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisteredStudentsScreen(
                                                id: state
                                                    .response.data[index].id,
                                                name: state
                                                    .response.data[index].name,
                                              )));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ReusableText(
                                                text: state.response.data[index]
                                                    .address,
                                                style: appstyle(
                                                    10,
                                                    AppConst.kWhite,
                                                    FontWeight.w400)),
                                            ReusableText(
                                                text: state
                                                    .response.data[index].name,
                                                style: appstyle(
                                                    15,
                                                    AppConst.kWhite,
                                                    FontWeight.w600)),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: [
                                                ReusableText(
                                                    text: state.response
                                                        .data[index].location,
                                                    style: appstyle(
                                                        10,
                                                        AppConst.kWhite,
                                                        FontWeight.w400)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const HeightSpacer(height: 4),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
              return const Offstage();
            },
          ),
        ));
  }
}
