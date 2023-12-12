import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';

class Turnirs extends StatefulWidget {
  const Turnirs({super.key});

  @override
  State<Turnirs> createState() => _TurnirsState();
}

class _TurnirsState extends State<Turnirs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConst.kWhite,
      child: ListView(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return  Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(text: 'Kekushinkai federation', style: appstyle(10, AppConst.kBlack, FontWeight.w400)),
                        ReusableText(text: 'IX республикалық турнир', style: appstyle(15, AppConst.kTextPurple, FontWeight.w600)),
                         ReusableText(text: 'Астана қ.', style: appstyle(10, AppConst.kBlack, FontWeight.w400))
                      ],
                    ),
                    trailing: ReusableText(text: '27.06-29.06', style: appstyle(10, AppConst.kBlack, FontWeight.w400),
                    ),
                  
                    ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(),
                  ),
                ],
              );
              },),
      ]),
    );
  }
}