import 'package:flutter/material.dart';

class FirstSectionGrid extends StatefulWidget {
  const FirstSectionGrid({super.key});

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
                  const SizedBox(height: 24),
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
                  const SizedBox(height: 24),
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
                  const SizedBox(height: 24),
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
