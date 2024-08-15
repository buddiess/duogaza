import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duogaza/data/data_source/post/post_data_source.dart';
import 'package:duogaza/domain/model/post/post.dart';

class PostDataSourceImpl implements PostDataSource {
  final FirebaseFirestore _fireStore;
  final CollectionReference<Post> _postRef;

  PostDataSourceImpl({
    required FirebaseFirestore fireStore,
  })  : _fireStore = fireStore,
        _postRef = fireStore.collection('post').withConverter<Post>(
              fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
              toFirestore: (snapshot, _) => snapshot.toJson(),
            );

  @override
  Future<void> createPost({required Post post}) async {
    try {
      await _postRef.doc(post.postId).set(post);
    } catch (e) {
      print('ERROR : post_data_source_impl.dart createPost');
    }
  }

  @override
  Future<void> deletePost({required String postId}) async {
    try {
      await _postRef.doc(postId).delete();
    } catch (e) {
      print('ERROR : post_data_source_impl.dart deletePost');
    }
  }

  @override
  Future<List<Post>> getAllPost() async {
    try {
      return await _postRef
          .orderBy('createDate', descending: true)
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList());
    } catch (e) {
      print('ERROR : post_data_source_impl.dart getAllPost');
      return [];
    }
  }

  @override
  Future<void> updatePost({required String postId, required Post post}) async {
    try {
      await _postRef.doc(postId).set(post);
    } catch (e) {
      print('ERROR : post_data_source_impl.dart updatePost');
    }
  }
}
