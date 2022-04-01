import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import "../calculations/calculation.dart";

class Sunrise extends StatelessWidget {
  final sunrise;
  final sunset;
  const Sunrise(this.sunrise, this.sunset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sunRisetime;
    var sunSettime;
    var textScale = MediaQuery.of(context).textScaleFactor;
    // print(sunrise);
    var sunDet = Calculation.getSunDet(sunrise, sunset);
    sunRisetime = sunDet.split("&")[0].trim();
    sunSettime = sunDet.split("&")[1].trim();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FeatherIcons.sunrise,
                size: 40 * textScale, //Icon Size
                color: Colors.yellow, //Color Of Icon
              ),
            ),
            Text(
              "SUNRISE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20 * textScale,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "$sunRisetime",
              style: TextStyle(
                fontSize: 10.0 * textScale,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                FeatherIcons.sunset,
                size: 40 * textScale, //Icon Size
                color: const Color.fromARGB(255, 226, 209, 58), //Color Of Icon
              ),
            ),
            Text(
              "SUNSET",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20 * textScale,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "$sunSettime",
              style: TextStyle(
                fontSize: 10.0 * textScale,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
