import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search View',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(
                vertical: 32.0, horizontal: 16.0),
            suffixIcon: Icon(Icons.search),
            labelText: 'Search',
            labelStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            hintText: 'Enter City name',
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(),
          ),
        ),
      )),
    );
  }
}
