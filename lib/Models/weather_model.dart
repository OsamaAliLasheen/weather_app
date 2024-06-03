class WeatherModel {
  final String cityName;
  final double temperature;
  final double maxtemp;
  final double mintemp;
  final String weatherCondition;
  final String date;
  final String? image;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.maxtemp,
    required this.mintemp,
    required this.weatherCondition,
    required this.date,
    this.image,
  });
}
