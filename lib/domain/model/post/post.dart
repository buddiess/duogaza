import 'package:duogaza/core/enum/position.dart';
import 'package:duogaza/core/enum/queType.dart';
import 'package:duogaza/core/enum/tier.dart';
import 'package:duogaza/domain/model/comment/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int postId,
    required DateTime createDate,
    required String title,
    required String content,
    required Position myPosition,
    required List<Position> findPosition,
    required QueType queType,
    required Tier tier,
    required String authorId,
    required List<Comment> commentList,
    required bool isVisible,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
