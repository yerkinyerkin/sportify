import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/result/screens/winners/logic/bloc/winners_bloc.dart';
import 'package:sportify/screens/result/screens/winners/widgets/winners_list_tile.dart';
import 'package:sportify/screens/result/screens/grid/widgets/years_container.dart';

class WinnersScreen extends StatefulWidget {
  final String id;
  const WinnersScreen({super.key, required this.id});

  @override
  State<WinnersScreen> createState() => _WinnersScreenState();
}

class _WinnersScreenState extends State<WinnersScreen> {
  List<String> years = [
    "6-7",
    "8-9",
    "10-11",
    "12-13",
    "14-15",
    "16-17",
  ];
  int currentYears = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<WinnersBloc>()..add(GetWinners(widget.id, years[currentYears])),
      child: BlocBuilder<WinnersBloc, WinnersState>(
        builder: (context, state) {
          if (state is WinnersLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: AppConst.kMaroon,
            ));
          }
          if (state is WinnersSuccess) {
            return Container(
              color: AppConst.kLightPurple,
              child: Column(
                children: [
                  Container(
                    color: AppConst.kWhite,
                    child: Column(
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
                                    context.read<WinnersBloc>().add(GetWinners(
                                        widget.id, years[currentYears]));
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
                      ],
                    ),
                  ),
                  state.response.data.isNotEmpty
                      ? Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              ListView.builder(
                                  itemCount: state.response.data.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        WinnersListTile(
                                          fullName:
                                              "${state.response.data[index].studentInfo.firstName} ${state.response.data[index].studentInfo.lastName}",
                                          clubName: state.response.data[index]
                                              .studentInfo.club.name,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Divider(
                                            height: 0,
                                            color: AppConst.kGrey,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        )
                      : const Center(
                          child: Text(
                            'Data is Empty',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
            );
          }
          return const Offstage();
        },
      ),
    );
  }
}
