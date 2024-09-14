import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubits/get_weather_state.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/weather_services.dart';

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
        WeatherFailureState(e.toString()),
      );
      // TODO
    }
  }
}

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_app/cubits/get_weather_cubits/get_weather_state.dart';
// import 'package:weather_app/models/weather_models.dart';
// import 'package:weather_app/services/weather_services.dart';

// class GetWeatherCubit extends Cubit<GetWeatherState> {
//   GetWeatherCubit(this.weatherservice) : super(WeatherLoadedState());
//   WeatherService weatherservice;
//   WeatherModel? weathermodel;
//   void getWeather({required String cityName}) async {
//     emit(WeatherLoadedState());
//     try {
//       weathermodel = await weatherservice.getCurrentWeather(cityname: cityName);
//       emit(WeatherSuccessState());
//     } on Exception catch (e) {
//       emit(WeatherFailureState());
//       // TODO
//     }
//   }
// }
