import 'dart:async';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetSunIcon {
  static sunIconbox(icon, var pageType) {
    if (pageType == "MainWeather") {
      if (icon == "01d") {
        return const Icon(
          FeatherIcons.sun,
          color: Colors.yellow,
          size: 90,
        );
      } else if (icon == "01n") {
        return const Icon(
          FeatherIcons.moon,
          color: Colors.yellow,
          size: 90,
        );
      } else {
        return FadeInImage(
          placeholder: const AssetImage("assets/images/weather.png"),
          image: NetworkImage("http://openweathermap.org/img/wn/$icon.png"),
        );
      }
    } else {
      if (icon == "01d") {
        return const Icon(
          FeatherIcons.sun,
          color: Colors.yellow,
          size: 30,
        );
      } else if (icon == "01n") {
        return const Icon(FeatherIcons.moon);
      } else {
        return FadeInImage(
          placeholder: const AssetImage("assets/images/weather.png"),
          image: NetworkImage("http://openweathermap.org/img/wn/$icon.png"),
        );
      }
    }
  }
}
