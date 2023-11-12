import 'package:blogapp/gen/assets.gen.dart';
import 'package:blogapp/gen/fonts.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () => showSnackBar(context, 'Like Button Clicked...!'),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueAccent,
          ),
          width: 111,
          height: 50,
          child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.hand_thumbsup,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "32.2K",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontFamily.avenir,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const AppBarSection(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  "Four Things Every Women Need To know",
                  style: textTheme.titleLarge,
                ),
              ),

              ///TODO:Profile-BookmarkSave
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        Assets.img.stories.story4.path,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),

                    ///TODO:name and desc of account near Img
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jacob Flinch',
                            style: textTheme.titleSmall!
                                .copyWith(color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Producer And Writer',
                            style: textTheme.titleSmall!.copyWith(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w300,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.share,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      CupertinoIcons.bookmark,
                    ),
                  ],
                ),
              ),

              ///Article Image
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(Assets.img.singlePost.path),
                ),
              ),

              ///Article SubTitle
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
                child: Text(
                  "A man seaxuality is never your mind responsibility",
                  style: textTheme.titleLarge!.copyWith(fontSize: 22),
                  overflow: TextOverflow.clip,
                ),
              ),

              ///TODO:Article Caption
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 32,
                  right: 32,
                ),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: textTheme.titleLarge!.copyWith(
                      fontSize: 17, fontWeight: FontWeight.w300, height: 1.7),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("$message"),
      duration: const Duration(seconds: 4),
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );
}

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.arrow_left,
            color: Colors.black,
            size: 30,
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
