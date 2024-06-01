import 'package:flutter/material.dart';
import 'package:weather_app/views/no_weather_page.dart';
import 'package:weather_app/views/weather_display_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(),
    );
  }
}
