import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 98, 2),
        title: const Text('Search View',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onSubmitted: (value) {
            print(value);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(
                vertical: 32.0, horizontal: 16.0),
            suffixIcon: Icon(Icons.search),
            labelText: 'Search',
            labelStyle: TextStyle(
              color: Colors.orange,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            hintText: 'Enter City name',
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2.0),
            ),
          ),
        ),
      )),
    );
  }
}