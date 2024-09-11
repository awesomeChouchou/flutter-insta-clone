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
              width: context.deviceWidth * 0.21,
              height: context.deviceWidth * 0.21,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'asset/picture${Random().nextInt(13) + 1}.jpg'), // Load random image from picture1.jpg to picture13.jpg
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
        ),
        Text(storyData[index].userId)
      ],
    );
  }
}
