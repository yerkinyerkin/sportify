import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/competition/logic/data/models/regions_model.dart';
import 'package:sportify/screens/competition/screens/region_into_screen.dart';

class RegionCompetition extends StatefulWidget {
  final List<Data> listOfRegions;
  const RegionCompetition({super.key, required this.listOfRegions});

  @override
  State<RegionCompetition> createState() => _RegionCompetitionState();
}

class _RegionCompetitionState extends State<RegionCompetition> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.listOfRegions.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegionIntoScreen(
                                  slug: widget.listOfRegions[index].slug)));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child:ReusableText(text: widget.listOfRegions[index].region, style: appstyle(13, AppConst.kWhite, FontWeight.w600)),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
