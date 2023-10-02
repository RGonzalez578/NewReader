import 'package:newsreader/core/util/usecases/resourses/data_state.dart';
import 'package:newsreader/features/daily_news/domain/entities/article.dart';
import 'package:newsreader/features/daily_news/domain/repositories/article_repository.dart';
import 'package:newsreader/features/daily_news/domain/usecases/usecase.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
