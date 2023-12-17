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
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: AppConst.kDarkPurple,
                          actions: <Widget>[
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (widget
                                        .secondSectionList[4].blueCornerWinner ==
                                    true)
                                  const Text(
                                    "Көк бұрыш жеңді",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                if (widget
                                        .secondSectionList[4].blueCornerWinner ==
                                    false)
                                  const Text(
                                    "Қызыл бұрыш жеңді",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                if (widget.secondSectionList[4]
                                            .blueCornerWinner ==
                                        false &&
                                    widget.secondSectionList[4]
                                            .redCornerWinner ==
                                        false)
                                  const Text(
                                    "Бой басталмады",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration:
                                        BoxDecoration(color: Color(0xffff0d0d)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration:
                                        BoxDecoration(color: Color(0xff0034ed)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    child: Container(
                      width: 220,
                      padding: const EdgeInsets.only(
                          left: 48, right: 48, top: 4, bottom: 4),
                      color: AppConst.kMaroon,
                      child: Column(
                        children: [
                          ReusableText(
                            text: widget.secondSectionList[4].redCorner
                                    ?.studentInfo!.firstName ??
                                "",
                            style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                          ),
                          const SizedBox(height: 16),
                          ReusableText(
                            text: widget.secondSectionList[4].blueCorner
                                    ?.studentInfo!.firstName ??
                                "",
                            style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 105),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: AppConst.kDarkPurple,
                          actions: <Widget>[
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (widget
                                        .secondSectionList[5].blueCornerWinner ==
                                    true)
                                  const Text(
                                    "Көк бұрыш жеңді",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                if (widget
                                        .secondSectionList[5].blueCornerWinner ==
                                    false)
                                  const Text(
                                    "Қызыл бұрыш жеңді",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                if (widget.secondSectionList[5]
                                            .blueCornerWinner ==
                                        false &&
                                    widget.secondSectionList[5]
                                            .redCornerWinner ==
                                        false)
                                  const Text(
                                    "Бой басталмады",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration:
                                        BoxDecoration(color: Color(0xffff0d0d)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration:
                                        BoxDecoration(color: Color(0xff0034ed)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    child: Container(
                      width: 220,
                      padding: const EdgeInsets.only(
                          left: 48, right: 48, top: 4, bottom: 4),
                      color: AppConst.kMaroon,
                      child: Column(
                        children: [
                          ReusableText(
                            text: widget.secondSectionList[5].redCorner
                                    ?.studentInfo!.firstName ??
                                "",
                            style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                          ),
                          const SizedBox(height: 16),
                          ReusableText(
                            text: widget.secondSectionList[5].blueCorner
                                    ?.studentInfo!.firstName ??
                                "",
                            style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                          ),
                        ],
                      ),
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
