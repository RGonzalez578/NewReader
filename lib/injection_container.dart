import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsreader/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:newsreader/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:newsreader/features/daily_news/domain/usecases/get_article.dart';
import 'package:newsreader/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // NewsAPI
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  // Article
  sl.registerSingleton<ArticleRepositoryImpl>(ArticleRepositoryImpl(sl()));

  // UseCase
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  // Blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
