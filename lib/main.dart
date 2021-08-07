import 'package:flutter/material.dart';

import 'integration_test/simple_counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Demo Tests',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            // body: const WidgetTest("Devera", "Academy", 32),
            // body: const WidgetWithCounterBlocHome(),
            body: const SimpleCounterScaffold()));
  }
}
