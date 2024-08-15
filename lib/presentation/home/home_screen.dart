import 'package:duogaza/presentation/home/component/board_menu.dart';
import 'package:duogaza/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.getAllPost();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BoardMenu(),
          Expanded(
            child: ListView(
              cacheExtent: 100,
              children: [
                ...viewModel.postList.map(
                  (e) => Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.title),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                        Text(e.content),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2024.04.01'),
                            Text('댓글 10'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //지우기
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('viewModel'),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                      Text('40대 중반 친구 구해요 얄라얄리 얄라셩 가라뫼 삼거리 아래 개천 흐르는 곳 길냥이 집'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('2024.04.01'),
                          Text('댓글 10'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
