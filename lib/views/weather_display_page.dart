import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Search for a city'),
        ),
        body: const Column(
          children: [
            SizedBox(height: 200),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SearchBar(
                hintText: 'Enter city name',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
