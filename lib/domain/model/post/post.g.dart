// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      postId: (json['postId'] as num).toInt(),
      createDate: DateTime.parse(json['createDate'] as String),
      title: json['title'] as String,
      content: json['content'] as String,
      myPosition: $enumDecode(_$PositionEnumMap, json['myPosition']),
      findPosition: (json['findPosition'] as List<dynamic>)
          .map((e) => $enumDecode(_$PositionEnumMap, e))
          .toList(),
      queType: $enumDecode(_$QueTypeEnumMap, json['queType']),
      tier: $enumDecode(_$TierEnumMap, json['tier']),
      authorId: json['authorId'] as String,
      commentList: (json['commentList'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      isVisible: json['isVisible'] as bool,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'createDate': instance.createDate.toIso8601String(),
      'title': instance.title,
      'content': instance.content,
      'myPosition': _$PositionEnumMap[instance.myPosition]!,
      'findPosition':
          instance.findPosition.map((e) => _$PositionEnumMap[e]!).toList(),
      'queType': _$QueTypeEnumMap[instance.queType]!,
      'tier': _$TierEnumMap[instance.tier]!,
      'authorId': instance.authorId,
      'commentList': instance.commentList,
      'isVisible': instance.isVisible,
    };

const _$PositionEnumMap = {
  Position.top: 'top',
  Position.jgl: 'jgl',
  Position.mid: 'mid',
  Position.bot: 'bot',
  Position.spt: 'spt',
};

const _$QueTypeEnumMap = {
  QueType.solo: 'solo',
  QueType.free: 'free',
  QueType.aram: 'aram',
  QueType.quick: 'quick',
};

const _$TierEnumMap = {
  Tier.iron: 'iron',
  Tier.bronze: 'bronze',
  Tier.silver: 'silver',
  Tier.gold: 'gold',
  Tier.platinum: 'platinum',
  Tier.emerald: 'emerald',
  Tier.diamond: 'diamond',
  Tier.master: 'master',
  Tier.grandmaster: 'grandmaster',
  Tier.challenger: 'challenger',
};
