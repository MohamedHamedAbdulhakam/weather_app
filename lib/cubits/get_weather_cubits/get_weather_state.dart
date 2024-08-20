// import 'package:weather_app/models/weather_models.dart';

// class WeatherState {}

// class NoWeatherState extends WeatherState {}

// class WeatherLoadedState extends WeatherState {
//   final WeatherModel weatherModel;

//   WeatherLoadedState(this.weatherModel);
// }

// class weatherFailureState extends WeatherState {
//   final String errMessage;

//   weatherFailureState(this.errMessage);
// }

abstract class WeatherState {}

class WeatherLoadedState extends WeatherState {}

class WeatherSuccessState extends WeatherState {}

class WeatherFailureState extends WeatherState {}
