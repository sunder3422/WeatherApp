import 'package:flutter/material.dart';
import '../calculations/calculation.dart';
import "../getSunicon/getSunIcon.dart";

class Weathermain extends StatelessWidget {
  final WeatherToday;
  final tempToday;
  const Weathermain(this.WeatherToday, this.tempToday, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var date = Calculation.getTodayDate();
    var year = date.split("&")[1].split(",")[2].toString().trim();
    var day =
        date.split("&")[1].split(",")[1].trim().split(' ')[1].toString().trim();
    var month =
        date.split("&")[1].split(",")[1].trim().split(' ')[0].toString().trim();
    var weekend = date.split("&")[1].split(",")[0].toString().trim();
    var tempInCelcius = (tempToday - 273.15).toString().substring(0, 4);
    var description = WeatherToday[0]["description"];
    var iconName = WeatherToday[0]["icon"];
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GetSunIcon.sunIconbox(iconName, "MainWeather"),
                          Text(
                            '$description'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20.0 * textScale,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "$tempInCelcius\u2103",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                          offset: Offset(2, 5),
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "$weekend $day $month $year",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                          offset: Offset(2, 3),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
