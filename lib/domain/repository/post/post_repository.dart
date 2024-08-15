import 'package:duogaza/domain/model/post/post.dart';

abstract interface class PostRepository {
  //글 올리기
  Future<void> createPost({required Post post});

  //해당 게시글에 해당하는 글 전체 조회
  Future<List<Post>> getAllPost();

  //수정기능
  Future<void> updatePost({required String postId, required Post post});

  //삭제기능
  Future<void> deletePost({required String postId});
}
