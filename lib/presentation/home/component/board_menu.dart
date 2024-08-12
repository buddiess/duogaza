import 'package:flutter/material.dart';

class BoardMenu extends StatefulWidget {
  const BoardMenu({super.key});

  @override
  State<BoardMenu> createState() => _BoardMenuState();
}

class _BoardMenuState extends State<BoardMenu> with TickerProviderStateMixin {
  double height = 0.0;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
            height = isExpanded ? 80.0 : 0.0;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('게시판 전체 보기'),
                isExpanded
                    ? Icon(Icons.keyboard_arrow_up)
                    : Icon(Icons.keyboard_arrow_down),
              ],
            ),
            AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 200),
              height: height,
              color: Colors.grey.shade200,
              child: GridView.count(
                crossAxisCount: 5,
                children: [
                  SizedBox(
                    width: 100,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                            width: 40,
                            height: 40,
                            'https://brand.riotgames.com/static/a91000434ed683358004b85c95d43ce0/3591c/lol-logo.webp'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('롤'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
