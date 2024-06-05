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

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      date: json['current']['last_updated'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
