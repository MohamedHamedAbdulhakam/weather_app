import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Alex',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                const Text('updated at 7 pm', style: TextStyle(fontSize: 32)),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/cloudy.png'),
                    const Text('17',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32)),
                    Column(
                      children: [
                        const Text('max temp 24',
                            style: TextStyle(fontSize: 16)),
                        const Text('min temp 16',
                            style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
                const Text('light rain',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
              ],
            )));
  }
}
