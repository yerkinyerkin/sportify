import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/models/grid_model.dart';

class FirstSectionGrid extends StatefulWidget {
  final List<Data> firstSectionList;
  const FirstSectionGrid({super.key, required this.firstSectionList});

  @override
  State<FirstSectionGrid> createState() => _FirstSectionGridState();
}

class _FirstSectionGridState extends State<FirstSectionGrid> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                            text: widget.firstSectionList[0].redCorner!
                                    .studentInfo!.firstName ??
                                "",
                            style:
                                appstyle(11, AppConst.kWhite, FontWeight.w700)),
                        const SizedBox(height: 16),
                        ReusableText(
                            text: widget.firstSectionList[0].blueCorner!
                                    .studentInfo!.firstName ??
                                "",
                            style:
                                appstyle(11, AppConst.kWhite, FontWeight.w700)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.firstSectionList[1].redCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.firstSectionList[1].blueCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.firstSectionList[2].redCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.firstSectionList[2].blueCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.firstSectionList[3].redCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.firstSectionList[3].blueCorner!
                                  .studentInfo!.firstName ??
                              "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 50,
          right: 50,
          child: Align(
            child: Container(
              height: 1,
              width: 37,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 139,
          right: 50,
          child: Align(
            child: Container(
              height: 1,
              width: 37,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 50,
          child: Align(
            child: Container(
              height: 90,
              width: 1,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 93,
          right: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 50,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 223,
          right: 50,
          child: Align(
            child: Container(
              height: 1,
              width: 37,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 310,
          right: 50,
          child: Align(
            child: Container(
              height: 1,
              width: 37,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 223,
          right: 50,
          child: Align(
            child: Container(
              height: 87,
              width: 1,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 267,
          right: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 50,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
