import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';


class LastFights extends StatefulWidget {
  const LastFights({super.key});

  @override
  State<LastFights> createState() => _LastFightsState();
}

class _LastFightsState extends State<LastFights> {
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
                  leading: ReusableText(text: "27.11 - 28.11", style: appstyle(11, AppConst.kWhite, FontWeight.w700),
                  
                  ),
                  title: Text("Қ. Мұңайтпасов атындағы республикалық турнирі", style: appstyle(11, AppConst.kWhite, FontWeight.w700)),
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