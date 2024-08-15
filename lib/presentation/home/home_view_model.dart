import 'package:duogaza/domain/model/post/post.dart';
import 'package:duogaza/domain/repository/post/post_repository.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  final PostRepository _postRepository;

  HomeViewModel({
    required PostRepository postRepository,
  }) : _postRepository = postRepository;

  List<Post> _postList = [];

  List<Post> get postList => _postList;

  Future<void> createPost({required Post post}) async {
    await _postRepository.createPost(post: post);
    notifyListeners();
  }

  Future<void> deletePost({required String postId}) async {
    await _postRepository.deletePost(postId: postId);
    notifyListeners();
  }

  Future<void> getAllPost() async {
    _postList = await _postRepository.getAllPost();
    notifyListeners();
  }

  Future<void> updatePost({required String postId, required Post post}) async {
    await _postRepository.updatePost(postId: postId, post: post);
    notifyListeners();
  }
}
