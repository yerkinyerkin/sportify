import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/competition/screens/region_competition.dart';
import 'package:sportify/screens/competition/screens/republic_competition.dart';

class CompetitionScreen extends StatefulWidget {
  const CompetitionScreen({super.key});

  @override
  State<CompetitionScreen> createState() => _CompetitionScreenState();
}

class _CompetitionScreenState extends State<CompetitionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff24154E),
        ),
        body: BlocProvider(
          create: (context) => sl<CompetitionBloc>()..add(GetCompetition("")),
          child: BlocBuilder<CompetitionBloc, CompetitionState>(
            builder: (context, state) {
              if (state is CompetitionInitial) {
                return const Text("Competition Initial");
              }
              if (state is CompetitionLoading) {
                return const CircularProgressIndicator();
              }

              if (state is CompetitionSuccess) {
                return DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
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
