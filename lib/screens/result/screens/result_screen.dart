import 'package:flutter/material.dart';
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
              color: Colors.grey,
              padding: const EdgeInsets.all(16),
              child: Text(widget.name),
            ),
            TabBar(
              tabs: [
                Tab(text: 'Сетки'),
                Tab(text: 'Чемпионы'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridScreen(id: widget.id,),
                  Container(
                    child: Text('Content for SubTab 2 of Tab'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
