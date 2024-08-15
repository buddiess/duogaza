import 'package:duogaza/core/enum/position.dart';
import 'package:duogaza/core/enum/queType.dart';
import 'package:duogaza/core/enum/tier.dart';
import 'package:duogaza/data/data_source/post/post_data_source.dart';
import 'package:duogaza/data/data_source/post/post_data_source_impl.dart';
import 'package:duogaza/domain/model/post/post.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final fakeFirestore = FakeFirebaseFirestore();
  final PostDataSource dataSource =
      PostDataSourceImpl(fireStore: fakeFirestore);

  group('PostDataSourceImpl 클래스', () {
    group('createPost()는', () {
      test('Firestore에 Post를 저장하고, 다시 읽어 왔을때 true를 반환해야 한다', () async {
        // Given

        final mockPost = Post(
          postId: 'createPost01',
          createDate: DateTime.parse('2024-08-14'),
          title: '글제목',
          content: '글내용',
          myPosition: Position.top,
          findPosition: [Position.mid],
          queType: QueType.solo,
          tier: Tier.master,
          authorId: '222',
          commentList: [],
          isVisible: true,
        );

        // When
        await dataSource.createPost(post: mockPost);
        // Then
        final doc =
            await fakeFirestore.collection('post').doc('createPost01').get();

        print('Document Data: ${doc.data()}');
        expect(doc.exists, true);
        expect(doc.data(), {
          'postId': 'createPost01',
          'createDate': '2024-08-14T00:00:00.000',
          'title': '글제목',
          'content': '글내용',
          'myPosition': 'top',
          'findPosition': ['mid'],
          'queType': 'solo',
          'tier': 'master',
          'authorId': '222',
          'commentList': [],
          'isVisible': true
        });
      });
    });

    group('getAllPost()는', () {
      test('저장된 모든 Post를 가져와서 올바른 결과를 반환해야 한다', () async {
        // Given: 테스트 데이터를 Firestore에 저장
        final post1 = Post(
            postId: 'getPostTest01',
            createDate: DateTime.parse('2024-08-28'),
            title: '글제목 1',
            content: '글내용 1',
            myPosition: Position.top,
            findPosition: [Position.mid],
            queType: QueType.solo,
            tier: Tier.master,
            authorId: '222',
            commentList: [],
            isVisible: true);

        final post2 = Post(
            postId: 'getPostTest02',
            createDate: DateTime.parse('2024-08-29'),
            title: '글제목 2',
            content: '글내용 2',
            myPosition: Position.bot,
            findPosition: [Position.spt],
            queType: QueType.quick,
            tier: Tier.bronze,
            authorId: '223',
            commentList: [],
            isVisible: true);

        await dataSource.createPost(post: post1);
        await dataSource.createPost(post: post2);

        // When: getAllPost() 호출
        final posts = await dataSource.getAllPost();

        expect(posts[0].postId, 'getPostTest02'); // 가장 최신 게시물이 먼저 와야 함
        expect(posts[1].postId, 'getPostTest01'); // 그 다음으로 오래된 게시물

        expect(posts[0].title, '글제목 2');
        expect(posts[1].title, '글제목 1');

        // 추가적인 검증: 데이터의 정확성을 체크할 수도 있습니다.
        expect(posts[0].content, '글내용 2');
        expect(posts[1].content, '글내용 1');
      });
    });

    group('updatePost()는', () {
      test('기존 Post를 업데이트하고, 변경된 내용을 Firestore에서 확인해야 한다', () async {
        // Given: 먼저 데이터를 저장하고, 그 데이터를 업데이트
        final initialPost = Post(
            postId: 'updatePost01',
            createDate: DateTime.parse('2024-08-15'),
            title: '글제목 초기',
            content: '글내용 초기',
            myPosition: Position.top,
            findPosition: [Position.mid],
            queType: QueType.solo,
            tier: Tier.master,
            authorId: '222',
            commentList: [],
            isVisible: true);

        final updatedPost = Post(
            postId: 'updatePost01',
            createDate: DateTime.parse('2024-08-15'),
            title: '글제목 업데이트',
            content: '글내용 업데이트',
            myPosition: Position.mid,
            findPosition: [Position.bot, Position.spt],
            queType: QueType.free,
            tier: Tier.emerald,
            authorId: '223',
            commentList: [],
            isVisible: false);

        await dataSource.createPost(post: initialPost);

        // When
        await dataSource.updatePost(postId: 'updatePost01', post: updatedPost);

        // Then
        final doc =
            await fakeFirestore.collection('post').doc('updatePost01').get();
        print('Document Data (updatePost): ${doc.data()}');
        expect(doc.exists, true);
        expect(doc.data(), {
          'postId': 'updatePost01',
          'createDate': '2024-08-15T00:00:00.000',
          'title': '글제목 업데이트',
          'content': '글내용 업데이트',
          'myPosition': 'mid',
          'findPosition': ['bot', 'spt'],
          'queType': 'free',
          'tier': 'emerald',
          'authorId': '223',
          'commentList': [],
          'isVisible': false
        });
      });
    });

    group('deletePost()는', () {
      test('Firestore에서 Post를 삭제해야 한다', () async {
        // Given: 먼저 데이터를 Firestore에 저장
        final mockPost = Post(
            postId: 'deletePost01',
            createDate: DateTime.parse('2024-08-15'),
            title: '글제목',
            content: '글내용',
            myPosition: Position.top,
            findPosition: [Position.mid],
            queType: QueType.solo,
            tier: Tier.master,
            authorId: '222',
            commentList: [],
            isVisible: true);

        await dataSource.createPost(post: mockPost);

        // When: deletePost()로 해당 데이터를 삭제
        await dataSource.deletePost(postId: 'deletePost01');

        // Then: Firestore에서 해당 데이터가 삭제되었는지 확인
        final doc =
            await fakeFirestore.collection('post').doc('deletePost01').get();
        print(
            'Document exists after delete: ${doc.exists}'); // 삭제 여부를 확인하기 위해 출력

        expect(doc.exists, false); // 데이터가 삭제되어 doc.exists가 false여야 함
      });
    });
  });
}
