import 'package:duogaza/presentation/home/component/board_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BoardMenu(),
          Expanded(
            child: ListView(
              cacheExtent: 100,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('40대 중반 롤 친구 구해요'),
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
