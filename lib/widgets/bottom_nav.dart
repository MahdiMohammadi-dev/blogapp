import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/screens/article_screen.dart';
import 'package:blogapp/widgets/ui_helper/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationIndex {
  BottomNavigationIndex._();
  static const splashIndex = 0;
  static const homeIndex = 1;
  static const articleIndex = 2;
  static const profileIndex = 3;
}

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var baseIndex = BottomNavigationIndex.splashIndex;

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
                onTap: () =>
                    changeIndex(index: BottomNavigationIndex.homeIndex),
              ),
              BottomNavItem(
                iconPath: Assets.img.icons.articles.path,
                titleIcon: 'Articles',
                textTheme: textTheme,
                onTap: () =>
                    changeIndex(index: BottomNavigationIndex.articleIndex),
              ),
              BottomNavItem(
                iconPath: Assets.img.icons.search.path,
                titleIcon: 'Search',
                textTheme: textTheme,
                onTap: () =>
                    changeIndex(index: BottomNavigationIndex.profileIndex),
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

  void changeIndex({required index}) {
    setState(() {
      baseIndex = index;
    });
  }
}
