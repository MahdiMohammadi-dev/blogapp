import 'package:blogapp/const/text_theme.dart';
import 'package:blogapp/screens/article_screen.dart';
import 'package:blogapp/screens/home_screen.dart';
import 'package:blogapp/screens/profile_screen.dart';
import 'package:blogapp/screens/splash_screen.dart';
import 'package:blogapp/widgets/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class BottomNavigationIndex {
  BottomNavigationIndex._();
  static const splashIndex = 0;
  static const homeIndex = 1;
  static const articleIndex = 2;
  static const profileIndex = 3;
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyTextTheme myTextTheme = MyTextTheme();
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: myTextTheme.textTheme),
        debugShowCheckedModeBanner: false,
        home: MainWrapper()
        // home: const SplashScreen(),
        );
  }
}

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  var baseIndex = BottomNavigationIndex.splashIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: baseIndex,
        children: [
          const SplashScreen(),
          HomeScreen(),
          const ArticleScreen(),
          const ProfileScreen()
        ],
      ),
    );
  }
}
