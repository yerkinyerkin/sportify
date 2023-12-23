import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/screens/students/logic/bloc/registered_students_bloc.dart';
import 'package:sportify/screens/students/screens/competition_students/screens/competition_st_screen.dart';

class RegisteredStudentsScreen extends StatefulWidget {
  final String id;
  final String name;
  const RegisteredStudentsScreen(
      {super.key, required this.id, required this.name});

  @override
  State<RegisteredStudentsScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<RegisteredStudentsScreen> {
  late PersistentBottomSheetController controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: AppConst.kDarkPurple),
        backgroundColor: AppConst.kLightPurple,
        body: BlocProvider(
          create: (context) => sl<RegisteredStudentsBloc>()
            ..add(GetRegisteredStudentsEvent(
              widget.id,
            )),
          child: BlocBuilder<RegisteredStudentsBloc, RegisteredStudentsState>(
            builder: (context, state) {
              if (state is RegisteredStudentsLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppConst.kMaroon,
                ));
              }
              if (state is RegisteredStudentsSuccess) {
                return state.response.data.isNotEmpty?
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        color: AppConst.kMaroon,
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            widget.name,
                            textAlign: TextAlign.center,
                            style:
                                appstyle(15, AppConst.kWhite, FontWeight.w700),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Тіркелген шәкірттер',
                        textAlign: TextAlign.center,
                        style: appstyle(15, AppConst.kWhite, FontWeight.w700),
                      ),
                    ),
                    Expanded(
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
                                    GestureDetector(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: AppConst.kGrey,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    "http://77.243.80.52:8000${state.response.data[index].studentInfo.image}",
                                                  ),
                                                  fit: BoxFit.fill)),
                                        ),
                                        title: ReusableText(
                                          text:
                                              "${state.response.data[index].studentInfo.firstName} ${state.response.data[index].studentInfo.lastName}",
                                          style: appstyle(12, AppConst.kWhite,
                                              FontWeight.w600),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            ReusableText(
                                                text:
                                                    "${state.response.data[index].studentInfo.club.name} ",
                                                style: appstyle(
                                                    9,
                                                    const Color(0xFFC0C0C0),
                                                    FontWeight.w400)),
                                            Image.network(
                                              'http://77.243.80.52:8000${state.response.data[index].studentInfo.club.logo}',
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        trailing: ReusableText(
                                          text:
                                              '${state.response.data[index].ageCategory} ${state.response.data[index].weightCategory}',
                                          style: appstyle(12, AppConst.kWhite,
                                              FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
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
                    ),
                  ],
                ):const Center(child: Text("Data is Empty"),);
              }
              if (state is RegisteredStudentsFailure) {
                return Center(
                  child: Text(state.response.toString()),
                );
              }
              return const Offstage();
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: AppConst.kMaroon,
            child: const Icon(Icons.add, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CompetitionStScreen(id: widget.id,)));
            }),
      ),
    );
  }

  
}
