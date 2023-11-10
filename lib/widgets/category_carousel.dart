import 'package:blogapp/carousel/carousel_options.dart';
import 'package:blogapp/carousel/carousel_slider.dart';
import 'package:blogapp/fake_data_model.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final TextTheme textTheme;
  const CategoryList({super.key, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    final categoryList = PostDataList.categories;
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: CarouselSlider.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Positioned.fill(
                    top: 100,
                    right: 56,
                    left: 56,
                    bottom: 24,
                    child: Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(blurRadius: 20, color: Color(0xaa0d253c)),
                      ]),
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  foregroundDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    gradient: LinearGradient(
                        colors: [Color(0xaa0d253c), Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center),
                  ),
                  margin: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      categoryList[index].imageFileName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 48,
                  left: 42,
                  child: Text(
                    categoryList[index].title,
                    style: textTheme.titleSmall,
                  ),
                )
              ],
            );
          },
          options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.8,
              aspectRatio: 1.2,
              initialPage: 0,
              disableCenter: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              scrollPhysics: const BouncingScrollPhysics())),
    );
  }
}
