import 'package:flutter/material.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';
import 'package:sportify/screens/result/screens/result_screen.dart';

class RepublicCompetition extends StatefulWidget {
  final List<Data> listOfData;
  const RepublicCompetition({super.key, required this.listOfData});

  @override
  State<RepublicCompetition> createState() => _RepublicCompetitionState();
}

class _RepublicCompetitionState extends State<RepublicCompetition> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: widget.listOfData.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              name: widget.listOfData[index].name,
                            )));
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.listOfData[index].name),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(widget.listOfData[index].location),
                              Text(widget.listOfData[index].address),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
