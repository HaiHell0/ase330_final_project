import 'package:flutter/material.dart';
import 'screens/history.dart';
import 'screens/home.dart';
import 'screens/stats.dart';
import 'screens/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/history': (context) => const History(),
        '/stats': (context) => const Stats(),
        '/workout': (context) => const WorkOut(),
      },
    );
  }
}
