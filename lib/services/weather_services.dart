import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final String domain = 'http://api.weatherapi.com/v1';
  final String apiKey = '36e1d34f88db4066933180908241207';
  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel?> getCurrentWeather({required String cityname}) async {
    try {
      Response response = await dio.get(
          '$domain/forecast.json?key=$apiKey&q=$cityname&days=1&aqi=no&alerts=no');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errmessage = e.response?.data['error']['message'] ??
          'oops there was an error,try later';
      throw Exception(errmessage);
      // TODO
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error,try later');
    }
  }
}
//http://api.weatherapi.com/v1/forecast.json?key=36e1d34f88db4066933180908241207&q=London&days=1&aqi=no&alerts=no');