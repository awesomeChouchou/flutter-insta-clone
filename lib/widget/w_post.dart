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
//TODO:  bool형의 isHeartClicked 변수를 선언하세요

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
                        //TODO: setState 함수를 이용해서 isHeartClicked를 토글하세요
                      },
                      child: Row(
                        children: [
                          Icon(
                            //TODO: isHeartClicked값에 따라 true라면 Icons.favorite을 false라면 Icons.favorite_border 아이콘을 나타내주세요
                          
                            size: 32,
                          ).pOnly(right: 5),
                          //TODO: isHeartClicked값에 따라 true라면 postData의 likeCount에 +1을 하고 false라면 그대로 보여주세요
                          //그리고 Text위젯의 오른쪽에 패딩을 10만큼 주세요
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
