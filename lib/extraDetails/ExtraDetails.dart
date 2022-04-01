import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class Extradetails extends StatelessWidget {
  final humidity;
  final pressure;
  final visibility;
  final windspeed;
  const Extradetails(
      this.humidity, this.pressure, this.visibility, this.windspeed,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hum = humidity;
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Icon(
                      FeatherIcons.cloudRain,
                      size: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      "HUMIDITY",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$humidity",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      FeatherIcons.filter,
                      size: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      "PRESSURE",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$pressure",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Icon(
                      FontAwesomeIcons.wind,
                      size: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      "WIND SPEED",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$windspeed",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.radar,
                      size: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      "VISIBILITY",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$visibility",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
