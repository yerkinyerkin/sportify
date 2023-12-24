import 'package:flutter/material.dart';
import 'package:sportify/core/custom/utils/constants.dart';

class StudentKg extends StatelessWidget {
  final int current;
  final int index;
  final List<String> list;
  final double fontSize;
  const StudentKg({
    super.key,
    required this.current,
    required this.list, required this.index, required this.fontSize,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: current == index
             ? AppConst.kMaroon
             : AppConst.kWhite.withOpacity(0),
       ),
       child: Center(
         child: Text(
           list[index],
           style: TextStyle(
                fontSize: fontSize,
               fontWeight: FontWeight.w500,
               color: current == index
                   ? AppConst.kWhite
                   : AppConst.kMaroon),
         ),
       ),
                              ),
    );
  }
}
