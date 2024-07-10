import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Alex',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            Text('updated at 7 pm', style: TextStyle(fontSize: 32)),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //  Image.asset('assets/cloudy.png'),
                Text('17',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                Column(
                  children: [
                    Text('max temp 24', style: TextStyle(fontSize: 16)),
                    Text('min temp 16', style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
            Text('light rain',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ],
        ));
  }
}
