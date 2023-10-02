import 'package:flutter/material.dart';
import 'package:newsreader/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:newsreader/injection_container.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DailyNews());
  }
}
