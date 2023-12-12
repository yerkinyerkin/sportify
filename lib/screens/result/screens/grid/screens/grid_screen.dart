import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/result/screens/grid/logic/bloc/grid_bloc.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/first_section_grid.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/second_section_grid.dart';
import 'package:sportify/screens/result/screens/grid/screens/grid_section/screens/third_section_grid.dart';
import 'package:sportify/screens/result/screens/grid/widgets/years_container.dart';

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
    "16-17",
  ];
  List<String> kg = [
    "30-34 kg",
    "34-38 kg",
    "38-42 kg",
    "38-42 kg",
    
  ];
  int currentYears = 0;
  int currentKg = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<GridBloc>()..add(GetCompParticipants(widget.id, years[currentYears], kg[currentKg])),
      child: BlocBuilder<GridBloc, GridState>(
        builder: (context, state) {
          if (state is GridLoading) {
            return const Center(child: CircularProgressIndicator(color: AppConst.kMaroon,));
          }
          if (state is GridSuccess) {
            return DefaultTabController(
              length: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: ReusableText(
                            text: 'Жас категориясы',
                            style:
                                appstyle(10, AppConst.kBlack, FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 32,
                          child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: years.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (ctx, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentYears = index;
                                    });
                                    context.read<GridBloc>().add(GetCompParticipants(
                                        widget.id, years[currentYears], kg[currentKg]));
                                  },
                                  child: YearsContainer(
                                    current: currentYears,
                                    list: years,
                                    index: index,
                                    fontSize: 12,
                                  ),
                                );
                              }),
                        ),
                        const HeightSpacer(height: 15),
                        Container(
                          width: double.infinity,
                          height: 40,
                          color: AppConst.kMaroon,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: kg.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (ctx, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentKg = index;
                                      });
                                      context.read<GridBloc>().add(GetCompParticipants(
                                        widget.id, years[currentYears], kg[currentKg]));
                                    },
                                    child: YearsContainer(
                                      current: currentKg,
                                      list: kg,
                                      index: index,
                                      fontSize: 10,
                                    ),
                                  );
                                }),
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
                      child: state.response.data.isNotEmpty?
                      TabBarView(
                        children: [
                          FirstSectionGrid(
                              firstSectionList: state.response.data),
                          SecondSectionGrid(
                              secondSectionList: state.response.data),
                          ThirdSectionGrid(
                              thirdSectionList: state.response.data)
                        ],
                      ):const Center(child: Text("Data is Empty"),),
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
