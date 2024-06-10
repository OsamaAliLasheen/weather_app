import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Services/weather_service.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState) {
    emit(InitialState());
  }

  void getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(WeatherFailureState());
    }
  }
}
