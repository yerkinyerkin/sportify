import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';

class RegionIntoScreen extends StatefulWidget {
  final String slug;
  const RegionIntoScreen({super.key, required this.slug});

  @override
  State<RegionIntoScreen> createState() => _RegionIntoScreenState();
}

class _RegionIntoScreenState extends State<RegionIntoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xff24154E),
        ),
        body: BlocProvider(
          create: (context) =>
              sl<CompetitionBloc>()..add(GetCompetition(widget.slug)),
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
                  child: Container(
                    child: Column(
                      children: [
                        ListView.builder(
                            itemCount: state.response.data.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Text("${state.response.data[index].name}")
                                  ],
                                ),
                              );
                            })
                      ],
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
