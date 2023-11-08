import 'package:blogapp/fake_data_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
    required this.size,
    required this.stories,
    required this.textTheme,
  });

  final Size size;
  final List<Story> stories;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 32, right: 32),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4),
            child: Column(
              children: [
                ///TODO:BorderGradinet
                Stack(
                  children: [
                    stories[index].isViewed
                        ? storySeen(index)
                        : storyUnSeen(index),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/img/icons/${stories[index].iconFileName}',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  stories[index].name,
                  style: textTheme.bodyMedium,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget storyUnSeen(int index) {
    return Container(
      width: 68,
      height: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xff376aed),
            Color(0xff4980e2),
            Color(0xff9cecfb),
          ],
        ),
      ),

      ///TODO:Back of image,White Background
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),

        ///TODO:Story Image
        child: storyImage(index),
      ),
    );
  }

  Widget storySeen(int index) {
    return DottedBorder(
      color: Colors.grey.shade500,
      radius: Radius.circular(24),
      dashPattern: [5, 5],
      borderType: BorderType.RRect,
      strokeWidth: 2,
      child: Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),

        ///TODO:Back of image,White Background
        child: Container(
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),

          ///TODO:Story Image
          child: storyImage(index),
        ),
      ),
    );
  }

  Widget storyImage(int index) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            stories[index].imageFileName,
          )),
    );
  }
}
