import 'dart:math';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubits/get_weather_cubit.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('search a city'),
        // backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              // weatherModel = await WeatherService(dio: Dio())
              //     .getCurrentWeather(cityname: value);

              getWeatherCubit.getweather(value, cityname: value);
              Navigator.of(context).pop();
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: 'search',
                hintText: "enter city name",
                suffixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                )),
          ),
        ),
      ),
    );
  }
}

//WeatherModel? weatherModel;
