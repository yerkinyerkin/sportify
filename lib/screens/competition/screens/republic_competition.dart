import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/divider_container.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';
import 'package:sportify/screens/result/screens/result_screen.dart';
import 'package:sportify/screens/students/screens/registered_students.dart';

class RepublicCompetition extends StatefulWidget {
  final List<Data> listOfData;
  const RepublicCompetition({super.key, required this.listOfData});

  @override
  State<RepublicCompetition> createState() => _RepublicCompetitionState();
}

class _RepublicCompetitionState extends State<RepublicCompetition> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          itemCount: widget.listOfData.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: widget.listOfData[index].registrationFinished!
                  ? AppConst.kDarkPurple
                  : const Color(0xff500244),
              child: Column(
                children: [
                  const DividerContainer(),
                  const HeightSpacer(height: 4),
                  InkWell(
                    onTap: () {
                      widget.listOfData[index].registrationFinished!
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                        id: widget.listOfData[index].id,
                                        name: widget.listOfData[index].name,
                                      )))
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisteredStudentsScreen(
                                        id: widget.listOfData[index].id,
                                        name: widget.listOfData[index].name,
                                      )));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                    text: widget.listOfData[index].address,
                                    style: appstyle(
                                        10, AppConst.kWhite, FontWeight.w400)),
                                ReusableText(
                                    text: widget.listOfData[index].name,
                                    style: appstyle(
                                        15, AppConst.kWhite, FontWeight.w600)),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    ReusableText(
                                        text: widget.listOfData[index].location,
                                        style: appstyle(10, AppConst.kWhite,
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
}
