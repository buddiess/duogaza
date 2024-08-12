// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      userId: json['userId'] as String,
      commentId: (json['commentId'] as num).toInt(),
      createDate: DateTime.parse(json['createDate'] as String),
      content: json['content'] as String,
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'commentId': instance.commentId,
      'createDate': instance.createDate.toIso8601String(),
      'content': instance.content,
      'isVisible': instance.isVisible,
    };
