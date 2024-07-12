class WeatherModel {
  final String cityname;
  final String date;
  final String? image;
  final String temp;
  final String maxtemp;
  final String mintemp;
  final String weathercondition;

  WeatherModel(
      {required this.cityname,
      required this.date,
      this.image,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.weathercondition});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['forecast']['forecastday'][0]['day']['condition']['text'],
      cityname: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weathercondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
