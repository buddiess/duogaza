import 'package:duogaza/presentaion/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
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
        body: HomeScreen(),
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
