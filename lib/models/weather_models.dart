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
}
