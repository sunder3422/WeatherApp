import 'package:flutter/material.dart';
import "./dailyWidget.dart";

class Dailydata extends StatelessWidget {
  final dailyData;
  const Dailydata(this.dailyData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var day0 = dailyData[0];
    var day1 = dailyData[1];
    var day2 = dailyData[2];
    var day3 = dailyData[3];
    var day4 = dailyData[4];
    var day5 = dailyData[5];
    return Container(
      child: Row(
        // verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          dailyWidget.rectangleWidget(day0, Color.fromRGBO(185, 32, 21, 1)),
          dailyWidget.rectangleWidget(
              day1, const Color.fromARGB(255, 64, 161, 19)),
          dailyWidget.rectangleWidget(
              day2, const Color.fromARGB(255, 82, 26, 172)),
          dailyWidget.rectangleWidget(
              day3, const Color.fromARGB(255, 170, 15, 106)),
          dailyWidget.rectangleWidget(
              day4, const Color.fromARGB(255, 9, 164, 175)),
          dailyWidget.rectangleWidget(
              day5, const Color.fromARGB(255, 185, 197, 9)),
        ],
      ),
    );
  }
}
