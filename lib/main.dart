import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/common/context_extension.dart';
import 'package:insta_clone/data/story_data.dart';
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
            'asset/logo2.svg',
            width: 100,
            height: 50,
          ),
          titleSpacing: 0.0,
          actions: [
            Icon(Icons.favorite_border_rounded).pOnly(right: 20),
            // Icon(Icons.chat).pOnly(right: 20),
            Container(
              width: 42,
              height: 42,
              child: SvgPicture.asset(
                'asset/chat.svg',
              ).pOnly(right: 20),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: List.generate(storyData.length, (index) {
                      return Column(
                        children: [
                          Container(
                            width: context.deviceWidth * 0.23,
                            height: context.deviceWidth * 0.23,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFE600), //스타그램 그라데이션 색상 시작
                                  Color(0xFFF77737),
                                  Color(0xFFE1306C),
                                  Color(0xFFC13584),
                                  Color(0xFF833AB4), // 인스타그램 그라데이션 색상 끝
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
                                        'asset/people${index + 1}.png'), // index 1부터 8까지
                                    fit: BoxFit.cover,
                                  ),
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                ),
                              ),
                            ),
                          ),
                          Text(storyData[index].userId) // Story 객체의 userId 사용
                        ],
                      ).pOnly(right: 10);
                    }),
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(8, (index) {
                // Generate 13 items
                return Column(
                  children: [
                    // Container(
                    //   height: context.deviceHeight * 0.05,
                    //   width: context.deviceWidth,
                    //   color: Colors.white,
                    //   child: Row(
                    //     children: [
                    //       SvgPicture.asset(
                    //         'asset/people${index + 1}.png',
                    //         width: 30,
                    //         height: 30,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      height: context.deviceHeight * 0.7,
                      width: context.deviceWidth,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10), // Add margin for spacing
                      child: Image.asset(
                        'asset/picture${index + 1}.jpg', // Load images from picture1.jpg to picture13.jpg
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
