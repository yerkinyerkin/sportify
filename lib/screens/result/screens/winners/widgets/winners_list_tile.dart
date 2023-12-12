import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';

class WinnersListTile extends StatelessWidget {
  final String fullName;
  final String clubName;
  const WinnersListTile({
    super.key, required this.fullName, required this.clubName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppConst.kGrey),
      ),
      title: ReusableText(
        text: fullName,
        style: appstyle(12, AppConst.kWhite, FontWeight.w600),
      ),
      subtitle: ReusableText(
          text: clubName,
          style: appstyle(
              9, const Color(0xFFC0C0C0), FontWeight.w400)),
      trailing: ReusableText(
        text: '34кг-38кг',
        style: appstyle(12, AppConst.kWhite, FontWeight.w700),
      ),
    );
  }
}