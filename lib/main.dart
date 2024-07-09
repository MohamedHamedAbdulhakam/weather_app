import 'package:flutter/material.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(WeaterApp());
}

class WeaterApp extends StatelessWidget {
  const WeaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
