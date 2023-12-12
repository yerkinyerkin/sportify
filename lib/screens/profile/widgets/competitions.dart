import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';


class CompetitionsProfile extends StatefulWidget {
  const CompetitionsProfile({super.key});

  @override
  State<CompetitionsProfile> createState() => _CompetitionsProfileState();
}

class _CompetitionsProfileState extends State<CompetitionsProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) { 
            return Column(
              children: [
                ListTile(
                  leading: ReusableText(text: "Республикалық жарыс", style: appstyle(12, AppConst.kWhite, FontWeight.w600),
                  
                  ),
                  trailing: Text("1-орын", style: appstyle(12, AppConst.kWhite, FontWeight.w700)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(),
                ),
              ],
            );
           },),
      ],
    );
  }
}