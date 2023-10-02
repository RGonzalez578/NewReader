import 'dart:io';

import 'package:dio/dio.dart';
import 'package:newsreader/core/constants/constants.dart';
import 'package:newsreader/core/util/usecases/resourses/data_state.dart';
import 'package:newsreader/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:newsreader/features/daily_news/data/models/article.dart';
import 'package:newsreader/features/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  /*This override method implemented from ArticleRepository class 
    should retrieve a List of ArticleModel instead of ArticleEntity
  */
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    final httpResponseArticles = await _newsApiService.getNewsArticles(
        apiKey: apiKey, country: country, category: category);
    try {
      if (httpResponseArticles.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponseArticles.data);
      } else {
        return DataFailed(DioException(
            error: httpResponseArticles.response.statusMessage,
            response: httpResponseArticles.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponseArticles.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
