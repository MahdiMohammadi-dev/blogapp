import 'package:blogapp/const/text_theme.dart';
import 'package:blogapp/screens/article_screen.dart';
import 'package:blogapp/screens/home_screen.dart';
import 'package:blogapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyTextTheme myTextTheme = MyTextTheme();
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: myTextTheme.textTheme),
      debugShowCheckedModeBanner: false,
      home: ArticleScreen(),
      // home: const SplashScreen(),
    );
  }
}
