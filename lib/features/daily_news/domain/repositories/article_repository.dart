import 'package:newsreader/core/util/usecases/resourses/data_state.dart';
import 'package:newsreader/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
