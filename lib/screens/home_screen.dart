import 'package:blogapp/fake_data_model.dart';
import 'package:blogapp/widgets/category_carousel.dart';
import 'package:blogapp/widgets/post_list.dart';
import 'package:blogapp/widgets/story_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var stories = StoryData.stories;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Mahdi",
                      style: textTheme.titleMedium,
                    ),
                    Image.asset(
                      'assets/img/icons/notification.png',
                      width: 32,
                      height: 32,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, bottom: 24),
                child: Text(
                  "Explore today's",
                  style: textTheme.titleLarge,
                ),
              ),
              StorySection(size: size, stories: stories, textTheme: textTheme),
              const SizedBox(
                height: 15,
              ),
              CategoryList(
                textTheme: textTheme,
              ),
              PostList(textTheme: textTheme),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
