import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubits/get_weather_cubit.dart';
import 'package:weather_app/models/weather_models.dart';
//import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/views/search_view.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    weatherModel.image!.contains("https");
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // customText(weathermodel: weathermodel),
            Text('updated at${weatherModel.date}',
                style: TextStyle(fontSize: 32)),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(weatherModel.image!),
                Text(weatherModel.temp.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                Column(
                  children: [
                    Text('max temp ${weatherModel.maxtemp.round()}',
                        style: TextStyle(fontSize: 16)),
                    Text('min temp ${weatherModel.mintemp.round()}',
                        style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
            Text(weatherModel.weathercondition,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ],
        ));
  }
}

class customText extends StatelessWidget {
  const customText({
    super.key,
    required this.weathermodel,
  });

  final weathermodel;

  @override
  Widget build(BuildContext context) {
    return Text(weathermodel.cityname,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32));
  }
}
