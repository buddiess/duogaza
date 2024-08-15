import 'package:duogaza/data/data_source/post/post_data_source.dart';
import 'package:duogaza/domain/model/post/post.dart';
import 'package:duogaza/domain/repository/post/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostDataSource postDataSource;

  PostRepositoryImpl({
    required this.postDataSource,
  });

  @override
  Future<void> createPost({required Post post}) {
    return postDataSource.createPost(post: post);
  }

  @override
  Future<void> deletePost({required String postId}) {
    return postDataSource.deletePost(postId: postId);
  }

  @override
  Future<List<Post>> getAllPost() {
    return postDataSource.getAllPost();
  }

  @override
  Future<void> updatePost({required String postId, required Post post}) {
    return postDataSource.updatePost(postId: postId, post: post);
  }
}
