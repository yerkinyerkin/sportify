import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/result/screens/grid/logic/bloc/grid_bloc.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/first_section_grid.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/second_section_grid.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/third_section_grid.dart';

class GridScreen extends StatefulWidget {
  final String id;
  const GridScreen({super.key, required this.id});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<String> years = [
    "6-7",
    "8-9",
    "10-11",
    "12-13",
    "14-15",
  ];
  List<String> kg = [
    "30-34 kg",
    "34-38 kg",
    "38-42 kg",
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<GridBloc>()..add(GetCompParticipants(widget.id, "16-17", "44kg")),
      child: BlocBuilder<GridBloc, GridState>(
        builder: (context, state) {
          if (state is GridLoading) {
            return const CircularProgressIndicator();
          }
          if (state is GridSuccess) {
            return DefaultTabController(
              length: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 84,
                          child: Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: Colors.red,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Жас категориясы"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: Expanded(
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: years.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Row(
                                                  children: [
                                                    Container(
                                                      color: Colors.grey,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8),
                                                      child: Text(years[index]),
                                                    ),
                                                    const SizedBox(width: 8)
                                                  ],
                                                );
                                              }),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 50,
                          child: Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: Colors.red,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: Expanded(
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: kg.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Row(
                                                  children: [
                                                    Container(
                                                      color: Colors.grey,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8),
                                                      child: Text(kg[index]),
                                                    ),
                                                    const SizedBox(width: 8)
                                                  ],
                                                );
                                              }),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const TabBar(
                      tabs: [
                        Tab(text: '1/4'),
                        Tab(text: '1/2'),
                        Tab(text: '1')
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          FirstSectionGrid(
                              firstSectionList: state.response.data),
                          SecondSectionGrid(
                              secondSectionList: state.response.data),
                          ThirdSectionGrid(
                              thirdSectionList: state.response.data)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Offstage();
        },
      ),
    );
  }
}
