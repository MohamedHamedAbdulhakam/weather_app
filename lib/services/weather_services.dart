import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final String domain = 'http://api.weatherapi.com/v1';
  final String apiKey = '36e1d34f88db4066933180908241207';
  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel?> getCurrentWeather({required String cityname}) async {
    Response response = await dio.get(
        '$domain/forecast.json?key=$apiKey&q=London&days=1&aqi=no&alerts=no');
    if (response.statusCode == 201) {
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    } else {
      final String errorMessage = response.data['error']['message'];
      throw Exception(errorMessage);
    }
  }
}
