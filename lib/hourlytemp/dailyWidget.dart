import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import '../calculations/calculation.dart';
import "../getSunicon/getSunIcon.dart";

class dailyWidget {
  static rectangleWidget(var dayData, var color) {
    var dt = dayData["dt"];
    var temp = dayData["temp"]["day"];
    var icon = dayData["weather"][0]["icon"];

    // print(dayData);
    String day = Calculation.getTime(dt);
    String tm = (temp - 273.15).toString().substring(0, 2);
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 1, right: 1, bottom: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(
              "$day",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            GetSunIcon.sunIconbox(icon, "dailyPage"),
            Text(
              "$tm\u2103",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
