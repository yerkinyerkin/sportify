import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/models/grid_model.dart';

class ThirdSectionGrid extends StatefulWidget {
  final List<Data> thirdSectionList;
  const ThirdSectionGrid({super.key, required this.thirdSectionList});

  @override
  State<ThirdSectionGrid> createState() => _ThirdSectionGridState();
}

class _ThirdSectionGridState extends State<ThirdSectionGrid> {
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
                  const SizedBox(height: 150),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: AppConst.kMaroon,
                    child: Column(
                      children: [
                        ReusableText(
                          text: widget.thirdSectionList[0].redCorner?.studentInfo!
                                .firstName ??
                            "",
                          style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                        ),
                        
                        const SizedBox(height: 16),
                        ReusableText(
                          text: widget.thirdSectionList[0].blueCorner?.studentInfo!
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
          top: 180,
          left: 0,
          child: Align(
            child: Container(
              height: 1,
              width: 87,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
