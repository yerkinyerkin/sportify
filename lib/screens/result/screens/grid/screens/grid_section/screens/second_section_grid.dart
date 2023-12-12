import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/models/grid_model.dart';

class SecondSectionGrid extends StatefulWidget {
  final List<Data> secondSectionList;
  const SecondSectionGrid({super.key, required this.secondSectionList});

  @override
  State<SecondSectionGrid> createState() => _SecondSectionGridState();
}

class _SecondSectionGridState extends State<SecondSectionGrid> {
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
                  const SizedBox(height: 65),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.secondSectionList[0].redCorner?.studentInfo!
                                .firstName ??
                            "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.secondSectionList[0].blueCorner?.studentInfo!
                                .firstName ??
                            "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 105),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.secondSectionList[0].redCorner?.studentInfo!
                                .firstName ??
                            "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.secondSectionList[0].blueCorner?.studentInfo!
                                .firstName ??
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
          top: 93,
          left: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 87,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 267,
          left: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 87,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 93,
          right: 42,
          child: Align(
            child: Container(
              height: 1,
              width: 45,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 265,
          right: 42,
          child: Align(
            child: Container(
              height: 1,
              width: 45,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 93,
          right: 42,
          child: Align(
            child: Container(
              height: 172,
              width: 1,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 180,
          right: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 42,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
