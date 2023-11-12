import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/screens/article_screen.dart';
import 'package:blogapp/widgets/ui_helper/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return BottomAppBar(
      height: 75,
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomNavItem(
                iconPath: Assets.img.icons.home.path,
                titleIcon: 'Home',
                textTheme: textTheme,
                onTap: () {},
              ),
              BottomNavItem(
                iconPath: Assets.img.icons.articles.path,
                titleIcon: 'Articles',
                textTheme: textTheme,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ArticleScreen(),
                  ));
                },
              ),
              BottomNavItem(
                iconPath: Assets.img.icons.search.path,
                titleIcon: 'Search',
                textTheme: textTheme,
                onTap: () {},
              ),
              BottomNavItem(
                iconPath: Assets.img.icons.menu.path,
                titleIcon: 'Menu',
                textTheme: textTheme,
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
