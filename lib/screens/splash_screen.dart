import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/screens/home_screen.dart';
import 'package:blogapp/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future gotoHomePage() async {
    return await Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoradingScreen(),
            ));
      },
    );
  }

  @override
  void initState() {
    super.initState();
    gotoHomePage();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.img.background.splash.path,
              fit: BoxFit.cover,
            ),
          ),
          Animate(
              effects: const [
                // FadeEffect(),
                ShimmerEffect(
                    delay: Duration(milliseconds: 100),
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 2500))
              ],
              child:
                  Center(child: SvgPicture.asset(Assets.img.icons.logo.path))),
        ],
      ),
    );
  }
}
