import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading/loading.dart';
import "./weatherFinal/weatherFinal.dart";
import 'package:geolocator/geolocator.dart';
import './networkHelper/NetworkHelper.dart';
import "./loading/loading.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void getGeoLocation() async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      var lat = position.latitude;
      var lon = position.longitude;
      NetworkHelper networkHeper = NetworkHelper(lat, lon);
      var weatherData = await networkHeper.fetchData();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return WeatherFinal(weatherData);
      }));
    }

    getGeoLocation();
    return const Loading();
  }
}
