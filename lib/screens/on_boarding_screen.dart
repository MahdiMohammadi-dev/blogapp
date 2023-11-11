import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoradingScreen extends StatefulWidget {
  const OnBoradingScreen({super.key});

  @override
  State<OnBoradingScreen> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<OnBoradingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Center(
                    child: Image.asset(Assets.img.background.onboarding.path)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 12),
                child: PageView.builder(
                  controller: pageController,
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        PageViewItems(
                          title: 'Read the article you want instantly',
                          sub:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                          textTheme: textTheme,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 32, right: 32),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Colors.blue,
                          dotColor: Colors.grey.shade400),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(84, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (pageController.page! < 3) {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        }
                        if (pageController.page == 2) {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                        }
                      },
                      child: const Icon(CupertinoIcons.arrow_right),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class PageViewItems extends StatelessWidget {
  final String title;
  final String sub;
  final TextTheme textTheme;
  const PageViewItems(
      {super.key,
      required this.title,
      required this.sub,
      required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: textTheme.titleLarge,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          sub,
          style: textTheme.titleMedium!.copyWith(height: 1.2),
          overflow: TextOverflow.clip,
        ),
      ],
    );
  }
}
