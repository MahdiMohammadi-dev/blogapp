import 'package:blogapp/fake_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  PostList({
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
        ///TODO:Latest and more title
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Latest News",
                style: textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "More",
                  style: textTheme.titleMedium!
                      .copyWith(color: Colors.blue, fontSize: 18),
                ),
              ),
            ],
          ),
        ),

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
