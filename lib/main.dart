import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duogaza/data/data_source/post/post_data_source_impl.dart';
import 'package:duogaza/data/repository_impl/post/post_repository_impl.dart';
import 'package:duogaza/presentation/home/home_screen.dart';
import 'package:duogaza/presentation/home/home_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('게시글'),
          centerTitle: true,
        ),
        body: ChangeNotifierProvider(
          create: (_) => HomeViewModel(
            postRepository: PostRepositoryImpl(
              postDataSource:
                  PostDataSourceImpl(fireStore: FirebaseFirestore.instance),
            ),
          ),
          child: HomeScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '게시판'),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot), label: '빠른매칭'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: '내계정')
          ],
        ),
      ),
    );
  }
}
