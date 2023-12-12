import 'package:flutter/material.dart';
import 'package:sportify/core/custom/utils/constants.dart';

class DividerContainer extends StatelessWidget {
  const DividerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConst.kWhite,
      height: 1,
      width: double.infinity,
     
    );
  }
}