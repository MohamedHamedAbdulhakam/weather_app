import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widget/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weater App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: const NoWheaterBody(),
    );
  }
}
