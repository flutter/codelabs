import 'package:flutter/material.dart';

import '${baseAssetURL}assets/server.dart';

const String baseAssetURL = 'http://localhost:8000/example/codelabs/getting_started_with_slivers/';

void main() {
  runApp(HorizonsApp());
}

class HorizonsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // This is the theme of your application.
      theme: ThemeData.dark(),
      // Scrolling in Flutter behaves differently depending on the ScrollBehavior.
      // By default, ScrollBehavior changes depending on the current platform.
      // For the purposes of this scrolling codelab, we're using a custom
      // ScrollBehavior so that the experience is the same for everyone
      // regardless of the platform they are using.
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Horizons Weather',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizons'),
          backgroundColor: Colors.teal[800],
        ),
        body: WeeklyForecastList(),
      )
    );
  }
}

class WeeklyForecastList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;
    final List<DailyForecast> forecasts = Server.getDailyForecastList();
    
    return SingleChildScrollView(
      child: Column(
        children: forecasts.map((DailyForecast forecast) {
          return Card(
            child: ListTile(
              title: Text(
                forecast.getWeekday(currentDate.weekday),
                style: textTheme.headline5,
              ),
              subtitle: Text(forecast.description),
              leading: Text(
                forecast.getDate(currentDate.day).toString(),
                style: textTheme.headline4,
              ),
              trailing: Text(
                '${forecast.highTemp}° H / ${forecast.lowTemp}° L',
                style: textTheme.subtitle2,
              ),
            ),
          );
        }).toList(),
      )  
    );
  }
}
