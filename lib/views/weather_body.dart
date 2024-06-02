import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Alexandria',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const Text('updated at 12:00',
                    style: TextStyle(
                      fontSize: 22,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/clear.png'),
                    const Text(
                      '18',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Maxtemp: 25',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Mintemp: 15',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
                const Text(
                  'Sunny',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
