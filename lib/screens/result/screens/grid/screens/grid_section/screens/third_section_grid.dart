import 'package:flutter/material.dart';
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
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Text(widget.thirdSectionList[6].redCorner?.studentInfo!
                                .firstName ??
                            ""),
                        const SizedBox(height: 16),
                        Text(widget.thirdSectionList[6].blueCorner?.studentInfo!
                                .firstName ??
                            ""),
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
