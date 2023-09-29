import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;

  const ArticleEntity({this.id, this.author});

  @override
  List<Object?> get props {
    return [id, author];
  }
}
