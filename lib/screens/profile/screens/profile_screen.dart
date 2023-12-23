import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/profile/widgets/competitions.dart';
import 'package:sportify/screens/profile/widgets/last_fights.dart';
import 'package:sportify/screens/profile/widgets/user_information.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/models/winners_model.dart';

class ProfileScreen extends StatefulWidget {
  final String? id;
  final StudentInfo? studentInfo;
  final int? place;
  const ProfileScreen({super.key, this.id, this.studentInfo, this.place});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// List<String> _sportList = ["Каратэ", "Бокс", "Футбол"];

class _ProfileScreenState extends State<ProfileScreen> {
  // String dropdownValue = _sportList.first;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppConst.kDarkPurple,
        appBar: AppBar(
          // title: Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     // DropdownButton<String>(
          //     //   value: dropdownValue,
          //     //   underline: const SizedBox(),
          //     //   icon: const Icon(
          //     //     Icons.arrow_drop_down_rounded,
          //     //     color: AppConst.kWhite,
          //     //   ),
          //     //   elevation: 16,
          //     //   dropdownColor: AppConst.kDarkPurple,
          //     //   style: appstyle(15, AppConst.kBlack, FontWeight.w600),
          //     //   onChanged: (String? value) {
          //     //     setState(() {
          //     //       dropdownValue = value!;
          //     //     });
          //     //   },
          //     //   items: _sportList.map<DropdownMenuItem<String>>((String value) {
          //     //     return DropdownMenuItem<String>(
          //     //       value: value,
          //     //       child: Text(
          //     //         value,
          //     //         style: appstyle(15, AppConst.kWhite, FontWeight.w600),
          //     //       ),
          //     //     );
          //     //   }).toList(),
          //     // ),
          //   ],
          // ),
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: AppConst.kDarkPurple,
        ),
        body: Column(
          children: [
            UserInformation(
              studentInfo: widget.studentInfo,
            ),
            TabBar(
              tabAlignment: TabAlignment.center,
              dividerColor: AppConst.kDarkPurple,
              indicatorColor: AppConst.kWhite,
              unselectedLabelStyle:
                  appstyle(12, AppConst.kGrey, FontWeight.w700),
              labelStyle: appstyle(12, AppConst.kWhite, FontWeight.w700),
              tabs: const [
                Tab(
                  text: 'Последние бои',
                ),
                Tab(text: 'Результаты в соревнованиях'),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  LastFights(),
                  CompetitionsProfile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
