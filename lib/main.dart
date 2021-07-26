import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            child: Image.asset("images/a.jpg"),
            padding: const EdgeInsets.only(bottom: 60),
          ),
        ),
        // bottomNavigationBar: ClipRect(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), //背景模糊化
        //     child: BottomNavigationBar(
        //       elevation: 0,
        //       showSelectedLabels: true,
        //       showUnselectedLabels: true,
        //       type: BottomNavigationBarType.fixed,
        //       selectedItemColor: const Color(0xFFFB4A70),
        //       unselectedItemColor: const Color(0xFFA6A6A6),
        //       items: const [
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.home),
        //           label: "首页",
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.ac_unit),
        //           label: "动态",
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.ac_unit),
        //           label: "消息",
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.ac_unit),
        //           label: "我的",
        //         ),
        //       ],
        //       backgroundColor: const Color(0xAAFFFFFF),
        //     ),
        //   ),
        // ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: const Color(0x88FFFFFF),
          child: SizedBox(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), //背景模糊化
                child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "首页",
                    ),
                     BottomNavigationBarItem(
                      icon: Icon(Icons.add_reaction),
                      label: "周边",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.access_time_outlined),
                      label: "动态",
                    ),
                  ],
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
            ),
            height: 60,
          ),
        ),
        extendBody: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}