import 'package:flutter/material.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.lightBlueAccent,
            Color.fromARGB(255, 160, 233, 253),
          ],
        ),
      ),
    ));
  }
}
