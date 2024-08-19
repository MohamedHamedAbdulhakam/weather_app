import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubits/get_weather_state.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/weather_services.dart';
import 'package:weather_app/views/search_view.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weatherModel;
  getweather(String value, {required String cityname}) async {
    try {
      weatherModel = (await WeatherService(dio: Dio())
          .getCurrentWeather(cityname: cityname))!;
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(
        weatherFailureState(e.toString()),
      );
      // TODO
    }
  }
}
