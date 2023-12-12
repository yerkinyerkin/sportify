import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/result/screens/winners/screens/winners_screen.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_screen.dart';

class ResultScreen extends StatefulWidget {
  final String id;
  final String name;
  const ResultScreen({super.key, required this.id, required this.name});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: const Color(0xff24154E),
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                color: AppConst.kMaroon,
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: appstyle(15, AppConst.kWhite, FontWeight.w700),
                  ),
                )),
            TabBar(
              unselectedLabelStyle:
                  appstyle(14, AppConst.kGrey, FontWeight.w700),
              labelStyle: appstyle(14, AppConst.kMaroon, FontWeight.w700),
              indicatorColor: AppConst.kMaroon,
              tabs: const [
                Tab(
                  text: 'Сетки',
                ),
                Tab(text: 'Чемпионы'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridScreen(
                    id: widget.id,
                  ),
                  WinnersScreen(id: widget.id),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
