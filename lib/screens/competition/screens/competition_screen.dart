import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/result/screens/result_screen.dart';

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
          create: (context) => sl<CompetitionBloc>()..add(GetCompetition()),
          child: BlocBuilder<CompetitionBloc, CompetitionState>(
            builder: (context, state) {
              if (state is CompetitionInitial) {
                return const Text("Competition Initial");
              }
              if (state is CompetitionLoading) {
                return const CircularProgressIndicator();
              }

              if (state is CompetitionSuccess) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: state.response.data.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(
                                          name: state.response.data[index].name,
                                        )));
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.response.data[index].name),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Text(state
                                              .response.data[index].location),
                                          Text(state
                                              .response.data[index].address),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
              return const Offstage();
            },
          ),
        ));
  }
}
