import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final String domain = 'http://api.weatherapi.com/v1';
  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityname}) async {
    Response response = await dio.get(
        '$domain/forecast.json?key=36e1d34f88db4066933180908241207&q=London&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }

  Future<WeatherModel> getForecast({required cityname}) async {
    Response response = await dio.get(
        '$domain/forecast.json?key=36e1d34f88db4066933180908241207&q=London&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
