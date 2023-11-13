import 'package:blogapp/fake_data_model.dart';
import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/widgets/post_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarSection(textTheme: textTheme),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///TODO:Img and name - dec Section
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 35),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
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
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              fit: BoxFit.cover,
                              Assets.img.stories.story5.path),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@Jon Smith',
                        style: textTheme.titleMedium!.copyWith(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jon Smith',
                        style: textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Ux Designer',
                        style: textTheme.titleMedium!
                            .copyWith(color: Colors.blueAccent),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 30),
              child: Text(
                'About me',
                style: textTheme.titleSmall!.copyWith(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 30, right: 60),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
                overflow: TextOverflow.clip,
                textAlign: TextAlign.left,
                style: textTheme.titleSmall!.copyWith(
                    height: 1.4,
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    color: Colors.black),
              ),
            ),

            ///TODO:account follow detail
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 20),
              child: Container(
                width: 280,
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.0,
                        offset: Offset(0, 13),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 7, 83, 212)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '52',
                              style: textTheme.titleSmall,
                            ),
                            Text(
                              'Post',
                              style: textTheme.titleSmall!.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.75)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '250',
                              style: textTheme.titleSmall,
                            ),
                            Text(
                              'Following',
                              style: textTheme.titleSmall!.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.75)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4.5K',
                              style: textTheme.titleSmall,
                            ),
                            Text(
                              'Follower',
                              style: textTheme.titleSmall!.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.75)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 25, right: 32),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'My Posts',
                      style: textTheme.titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.square_grid_2x2,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bars,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            MyPostList(textTheme: textTheme),
          ],
        ),
      ),
    );
  }
}

class MyPostList extends StatelessWidget {
  MyPostList({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;
  final postData = PostDataList.posts;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ///TODO:PostItems List
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 24),
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemExtent: 142,
            itemCount: postData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width,
                  height: 120,
                  // color: Colors.brown,
                  child: Row(
                    children: [
                      ///TODO:Image Of Post
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            postData[index].imageFileName,
                            width: 100,
                            height: 100,
                          )),
                      const SizedBox(
                        width: 16,
                      ),

                      ///TODO:Title and description with row icon(like,hour,...)
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              postData[index].caption,
                              style: textTheme.titleMedium!.copyWith(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              postData[index].title,
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                              style: textTheme.titleMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  CupertinoIcons.hand_thumbsup,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(postData[index].likes),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Icon(
                                  CupertinoIcons.clock,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(postData[index].time),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      postData[index].isBookmarked
                                          ? CupertinoIcons.bookmark_fill
                                          : CupertinoIcons.bookmark,
                                      size: 16,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Profile',
            style: textTheme.titleLarge,
          ),
          const RotatedBox(
            quarterTurns: 1,
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
