// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get postId => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Position get myPosition => throw _privateConstructorUsedError;
  List<Position> get findPosition => throw _privateConstructorUsedError;
  QueType get queType => throw _privateConstructorUsedError;
  Tier get tier => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  List<Comment> get commentList => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int postId,
      DateTime createDate,
      String title,
      String content,
      Position myPosition,
      List<Position> findPosition,
      QueType queType,
      Tier tier,
      String authorId,
      List<Comment> commentList,
      bool isVisible});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? createDate = null,
    Object? title = null,
    Object? content = null,
    Object? myPosition = null,
    Object? findPosition = null,
    Object? queType = null,
    Object? tier = null,
    Object? authorId = null,
    Object? commentList = null,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      myPosition: null == myPosition
          ? _value.myPosition
          : myPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      findPosition: null == findPosition
          ? _value.findPosition
          : findPosition // ignore: cast_nullable_to_non_nullable
              as List<Position>,
      queType: null == queType
          ? _value.queType
          : queType // ignore: cast_nullable_to_non_nullable
              as QueType,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as Tier,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int postId,
      DateTime createDate,
      String title,
      String content,
      Position myPosition,
      List<Position> findPosition,
      QueType queType,
      Tier tier,
      String authorId,
      List<Comment> commentList,
      bool isVisible});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? createDate = null,
    Object? title = null,
    Object? content = null,
    Object? myPosition = null,
    Object? findPosition = null,
    Object? queType = null,
    Object? tier = null,
    Object? authorId = null,
    Object? commentList = null,
    Object? isVisible = null,
  }) {
    return _then(_$PostImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      myPosition: null == myPosition
          ? _value.myPosition
          : myPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      findPosition: null == findPosition
          ? _value._findPosition
          : findPosition // ignore: cast_nullable_to_non_nullable
              as List<Position>,
      queType: null == queType
          ? _value.queType
          : queType // ignore: cast_nullable_to_non_nullable
              as QueType,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as Tier,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.postId,
      required this.createDate,
      required this.title,
      required this.content,
      required this.myPosition,
      required final List<Position> findPosition,
      required this.queType,
      required this.tier,
      required this.authorId,
      required final List<Comment> commentList,
      required this.isVisible})
      : _findPosition = findPosition,
        _commentList = commentList;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int postId;
  @override
  final DateTime createDate;
  @override
  final String title;
  @override
  final String content;
  @override
  final Position myPosition;
  final List<Position> _findPosition;
  @override
  List<Position> get findPosition {
    if (_findPosition is EqualUnmodifiableListView) return _findPosition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_findPosition);
  }

  @override
  final QueType queType;
  @override
  final Tier tier;
  @override
  final String authorId;
  final List<Comment> _commentList;
  @override
  List<Comment> get commentList {
    if (_commentList is EqualUnmodifiableListView) return _commentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'Post(postId: $postId, createDate: $createDate, title: $title, content: $content, myPosition: $myPosition, findPosition: $findPosition, queType: $queType, tier: $tier, authorId: $authorId, commentList: $commentList, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.myPosition, myPosition) ||
                other.myPosition == myPosition) &&
            const DeepCollectionEquality()
                .equals(other._findPosition, _findPosition) &&
            (identical(other.queType, queType) || other.queType == queType) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      createDate,
      title,
      content,
      myPosition,
      const DeepCollectionEquality().hash(_findPosition),
      queType,
      tier,
      authorId,
      const DeepCollectionEquality().hash(_commentList),
      isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final int postId,
      required final DateTime createDate,
      required final String title,
      required final String content,
      required final Position myPosition,
      required final List<Position> findPosition,
      required final QueType queType,
      required final Tier tier,
      required final String authorId,
      required final List<Comment> commentList,
      required final bool isVisible}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get postId;
  @override
  DateTime get createDate;
  @override
  String get title;
  @override
  String get content;
  @override
  Position get myPosition;
  @override
  List<Position> get findPosition;
  @override
  QueType get queType;
  @override
  Tier get tier;
  @override
  String get authorId;
  @override
  List<Comment> get commentList;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
