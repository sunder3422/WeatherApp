import 'package:flutter/material.dart';
import 'package:flutter_application_1/weather-main/Weather.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../suntiming/suntiming.dart';
import '../extraDetails/ExtraDetails.dart';
import '../hourlytemp/hourly.dart';
import '../calculations/calculation.dart';

class WeatherFinal extends StatefulWidget {
  final LocationWeather;
  const WeatherFinal(this.LocationWeather);
  // const WeatherFinal({Key? key}) : super(key: key);
// print(weatherData);
  @override
  State<WeatherFinal> createState() => _WeatherFinalState();
}

class _WeatherFinalState extends State<WeatherFinal> {
  var weathermain;
  var tempToday;

//sun up and set time
  var sunrise;
  var sunset;
//extra details

  var humidity;
  var pressure;
  var visibility;
  var windspeed;

//daily data
  var daily;

  @override
  void initState() {
    super.initState();
    // print(widget.LocationWeather);
    updateWeather(widget.LocationWeather);
  }

  var currentTimeTemp = Calculation.getTodayDate();

  updateWeather(dynamic weatherToday) {
    weathermain = weatherToday["current"]["weather"];
    tempToday = weatherToday["current"]["temp"];
    sunrise = weatherToday["current"]["sunrise"];
    sunset = weatherToday["current"]["sunset"];
    humidity = weatherToday["current"]["humidity"];
    pressure = weatherToday["current"]["humidity"];
    visibility = weatherToday["current"]["visibility"];
    windspeed = weatherToday["current"]["wind_speed"];

    //
    daily = weatherToday["daily"];
    // print(weat)
  }

  @override
  Widget build(BuildContext context) {
    var currentHour = int.parse(currentTimeTemp.split("&")[0].split(":")[0]);
    var imagName = "spider.jpg";
    print(currentHour);
    if (currentHour > 12 && currentHour < 16) {
      imagName = "dat.jpg";
    } else if (currentHour > 16 && currentHour < 19) {
      imagName = "evening.jpg";
    } else if (currentHour > 19 && currentHour < 5) {
      imagName = "night.jpg";
    } else {
      imagName = "morning.jpg";
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 81, 34),
      drawer: Drawer(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 56, 6, 136),
              Color.fromARGB(255, 84, 11, 133)
            ])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 8, 24, 92)),
                accountName: Text("Daily Weather"),
                accountEmail: Text("Weatherapp@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(FeatherIcons.sun),
                ),
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 8, 80, 128),
                title: Text(
                  "AIR POLLUTION",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ) // Populate the Drawer by adding content in the next step.
          ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            "WEATHER-APP",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 50),
            icon: Icon(FontAwesomeIcons.sun, color: Colors.amber, size: 40),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/$imagName"),
                  fit: BoxFit.cover,
                ),
              ),
              // color: Color.fromARGB(255, 6, 66, 134),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Weathermain(weathermain, tempToday),
                  Sunrise(sunrise, sunset),
                  Extradetails(humidity, pressure, visibility, windspeed),
                  Dailydata(daily)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
