import 'package:flutter/material.dart';

class ThirdSectionGrid extends StatefulWidget {
  const ThirdSectionGrid({super.key});

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
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, top: 4, bottom: 4),
                    color: Colors.grey,
                    child: const Column(
                      children: [
                        Text("Taniyev Kenzhebek"),
                        SizedBox(height: 16),
                        Text("Taniyev Kenzhebek"),
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
