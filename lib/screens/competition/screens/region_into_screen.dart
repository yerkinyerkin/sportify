import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/competition/widgets/turnirs.dart';

class RegionIntoScreen extends StatefulWidget {
  final String slug;
  const RegionIntoScreen({super.key, required this.slug});

  @override
  State<RegionIntoScreen> createState() => _RegionIntoScreenState();
}

class _RegionIntoScreenState extends State<RegionIntoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: AppConst.kWhite,
            centerTitle: false,
            backgroundColor: AppConst.kDarkPurple,
            title: Text(
              'Облыстар',
              style: appstyle(15, AppConst.kWhite, FontWeight.w600),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: AppConst.kWhite,
                  )),
            ],
          ),
          backgroundColor: AppConst.kDarkPurple,
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
                  return Column(
                    children: [
                      Container(
                        color: AppConst.kLightPurple,
                        padding: const EdgeInsets.symmetric(vertical: 74),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration:
                                    const BoxDecoration(color: AppConst.kGrey),
                              ),
                              const HeightSpacer(height: 55),
                              ReusableText(
                                  text: 'Atyrau',
                                  style: appstyle(
                                      18, AppConst.kWhite, FontWeight.w600))
                            ],
                          ),
                        ),
                      ),
                      TabBar(
                        tabAlignment: TabAlignment.center,
                        dividerColor: AppConst.kDarkPurple,
                        indicatorColor: AppConst.kWhite,
                        unselectedLabelStyle:
                            appstyle(14, AppConst.kGrey, FontWeight.w700),
                        labelStyle:
                            appstyle(14, AppConst.kWhite, FontWeight.w700),
                        tabs: const [
                          Tab(
                            text: 'Турнирлар',
                          ),
                          Tab(text: 'Клубтар'),
                        ],
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            Turnirs(),
                            Center(
                              child: Text('Tab 2'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return const Offstage();
              },
            ),
          )),
    );
  }
}
