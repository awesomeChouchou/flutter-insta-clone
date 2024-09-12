import 'dart:math';

import 'package:flutter/material.dart';
import 'package:insta_clone/common/context_extension.dart';
import 'package:insta_clone/data/story_data.dart';

class StoryWidget extends StatelessWidget {
  final int index;

  const StoryWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.deviceWidth * 0.23,
          height: context.deviceWidth * 0.23,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFE600),
                Color(0xFFF77737),
                Color(0xFFE1306C),
                Color(0xFFC13584),
                Color(0xFF833AB4),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Center(
            child: Container(
                //TODO: 19라인의 컨테이너를 참고해서 asset/picture1~13까지의 사진을 인스타그램 스토리처럼 비슷하게 만들어주세요
                // AI를 활용하셔도 좋습니다.

                ),
          ),
        ),
        Text(storyData[index].userId)
      ],
    );
  }
}
