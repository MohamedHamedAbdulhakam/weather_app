import 'package:weather_app/models/weather_models.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errMessage;

  WeatherFailureState(this.errMessage);
}

// abstract class GetWeatherState {}

// class WeatherLoadedState extends GetWeatherState {}

// class WeatherSuccessState extends GetWeatherState {}

// class WeatherFailureState extends GetWeatherState {}
