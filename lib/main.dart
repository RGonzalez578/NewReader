import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsreader/config/theme/app_theme.dart';
import 'package:newsreader/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:newsreader/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
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
    return BlocProvider<RemoteArticlesBloc>(
        create: (context) => sl()..add(const GetArticles()),
        child: MaterialApp(theme: theme(), home: const DailyNews()));
  }
}
