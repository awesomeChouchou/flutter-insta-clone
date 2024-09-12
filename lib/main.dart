import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/data/post_data.dart';
import 'package:insta_clone/data/story_data.dart';
import 'package:insta_clone/widget/w_post.dart';
import 'package:insta_clone/widget/w_story.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: SvgPicture.asset(
            'asset/logo.svg',
            width: 100,
            height: 50,
          ),
          titleSpacing: 0.0,
          actions: [
            const Icon(
              Icons.favorite_border_rounded,
              size: 30,
            ).pOnly(right: 20),
            SvgPicture.asset(
              'asset/chat.svg',
              width: 30,
              height: 30,
            ).pOnly(right: 20)
          ]),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                        //TODO: List.generate 함수를 이용해서 StoryWidget을 storyData.length만큼 그려주세요

                        ),
                  ),
                ),
              ),
              Column(
                  // //TODO: List.generate 함수를 이용해서 PostWidget을 postData.length만큼 그려주세요

                  ),
            ],
          ),
        ),
      ),
    );
  }
}
