import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/common/context_extension.dart';
import 'package:insta_clone/data/post_data.dart';
import 'package:velocity_x/velocity_x.dart';

class PostWidget extends StatefulWidget {
  final int index;

  const PostWidget({
    required this.index,
    super.key,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isHeartClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Container(
            height: context.deviceHeight * 0.05,
            width: context.deviceWidth,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: context.deviceWidth * 0.1,
                      height: context.deviceWidth * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'asset/picture${Random().nextInt(13) + 1}.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ).pOnly(right: 5),
                    Text(postData[widget.index].userId),
                  ],
                ),
                SvgPicture.asset(
                  'asset/3dot.svg',
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
        ),
        Container(
          height: context.deviceHeight * 0.7,
          width: context.deviceWidth,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset(
            postData[widget.index].imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Container(
            height: context.deviceHeight * 0.05,
            width: context.deviceWidth,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isHeartClicked = !isHeartClicked;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            isHeartClicked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 32,
                          ).pOnly(right: 5),
                          Text(isHeartClicked
                                  ? '${postData[widget.index].likeCount + 1}'
                                  : '${postData[widget.index].likeCount}')
                              .pOnly(right: 10),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'asset/chat.svg',
                      width: 30,
                      height: 30,
                    ).pOnly(right: 5),
                    Text('${postData[widget.index].commentCount}')
                        .pOnly(right: 10),
                    SvgPicture.asset(
                      'asset/paper-plane.svg',
                      width: 30,
                      height: 30,
                    ).pOnly(right: 5),
                    Text('${postData[widget.index].commentCount}')
                        .pOnly(right: 10),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
