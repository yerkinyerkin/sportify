import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/competition/screens/region_competition.dart';
import 'package:sportify/screens/competition/screens/republic_competition.dart';

class CompetitionScreen extends StatefulWidget {
  const CompetitionScreen({super.key});

  @override
  State<CompetitionScreen> createState() => _CompetitionScreenState();
}

List<String> _sportList = [
  "Каратэ",
  
];

class _CompetitionScreenState extends State<CompetitionScreen> {
  String dropdownValue = _sportList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConst.kLightPurple,
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
                DropdownButton<String>(
                  value: dropdownValue,
                  underline: const SizedBox(),
                  icon: const Icon(Icons.arrow_drop_down_rounded, color: AppConst.kWhite,),
                  elevation: 16,
                  dropdownColor: AppConst.kDarkPurple,
                  style: appstyle(15, AppConst.kBlack, FontWeight.w600),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items:
                      _sportList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: appstyle(15, AppConst.kWhite, FontWeight.w600),
                      ),
                    );
                  }).toList(),
                ),
              
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: AppConst.kWhite,
                ))
          ],
          backgroundColor: AppConst.kDarkPurple,
        ),
        body: BlocProvider(
          create: (context) => sl<CompetitionBloc>()..add(GetCompetition("")),
          child: BlocBuilder<CompetitionBloc, CompetitionState>(
            builder: (context, state) {
              if (state is CompetitionInitial) {
                return const Text("Competition Initial");
              }
              if (state is CompetitionLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppConst.kWhite,
                ));
              }

              if (state is CompetitionSuccess) {
                return DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: AppConst.kWhite,
                          unselectedLabelColor: AppConst.kWhite,
                          tabs: [
                            Tab(text: 'Республикалық турнир'),
                            Tab(text: 'Облыстық турнир'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            RepublicCompetition(
                              listOfData: state.response.data,
                            ),
                            RegionCompetition(
                              listOfRegions: state.regionsModel.data,
                            )
                          ]),
                        )
                      ],
                    ));
              }
              return const Offstage();
            },
          ),
        ));
  }
}
