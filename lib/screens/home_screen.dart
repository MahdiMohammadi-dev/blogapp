import 'package:blogapp/carousel/carousel_slider.dart';
import 'package:blogapp/fake_data_model.dart';
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
              CategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryList = StoryData.categories;
    return CarouselSlider.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: 70,
            height: 150,
            color: Colors.red,
          );
        },
        options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            scrollPhysics: BouncingScrollPhysics()));
  }
}
