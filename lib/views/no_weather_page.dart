import 'package:flutter/material.dart';

class NoWeatherPage extends StatelessWidget {
  const NoWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            'There is no weather start searching now',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
