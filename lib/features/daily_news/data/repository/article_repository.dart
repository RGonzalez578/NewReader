import 'package:newsreader/core/util/usecases/resourses/data_state.dart';
import 'package:newsreader/features/daily_news/data/models/article.dart';
import 'package:newsreader/features/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  /*This override method implemented from ArticleRepository class 
    should retrieve a List of ArticleModel instead of ArticleEntity
  */
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
