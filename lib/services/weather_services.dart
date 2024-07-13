import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required cityname}) async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=36e1d34f88db4066933180908241207&q=London&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
