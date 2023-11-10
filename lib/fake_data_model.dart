import 'package:blogapp/gen/assets.gen.dart';

class Story {
  final int id;
  final String name;
  final String imageFileName;
  final String iconFileName;
  final bool isViewed;

  Story(
      {required this.id,
      required this.name,
      required this.imageFileName,
      required this.iconFileName,
      required this.isViewed});
}

class PostData {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookmarked;
  final String imageFileName;

  PostData(
      {required this.id,
      required this.caption,
      required this.title,
      required this.likes,
      required this.time,
      required this.isBookmarked,
      required this.imageFileName});
}

class Category {
  final int id;
  final String title;
  final String imageFileName;

  Category(
      {required this.id, required this.title, required this.imageFileName});
}

class PostDataList {
  static List<Category> get categories {
    return [
      Category(
        id: 101,
        title: 'Technology',
        imageFileName: Assets.img.posts.large.largePost1.path,
      ),
      Category(
        id: 102,
        title: 'Adventure',
        imageFileName: Assets.img.posts.large.largePost2.path,
      ),
      Category(
        id: 103,
        title: 'Sports',
        imageFileName: Assets.img.posts.large.largePost3.path,
      ),
      Category(
        id: 104,
        title: 'Politics',
        imageFileName: Assets.img.posts.large.largePost4.path,
      ),
      Category(
        id: 105,
        title: 'Science',
        imageFileName: Assets.img.posts.large.largePost5.path,
      ),
      Category(
        id: 106,
        title: 'Car and Motorcycles',
        imageFileName: Assets.img.posts.large.largePost6.path,
      ),
    ];
  }

  static List<PostData> get posts {
    return [
      PostData(
          id: 1,
          title: 'BMW M5 Competition Review 2021',
          caption: 'TOP GEAR',
          isBookmarked: false,
          likes: '3.1k',
          time: '1hr ago',
          imageFileName: Assets.img.posts.small.smallPost1.path),
      PostData(
          id: 0,
          title: 'MacBook Pro with M1 Pro and M1 Max review',
          caption: 'THE VERGE',
          isBookmarked: false,
          likes: '1.2k',
          time: '2hr ago',
          imageFileName: Assets.img.posts.small.smallPost2.path),
      PostData(
          id: 2,
          title: 'Step design sprint for UX beginner',
          caption: 'Ux Design',
          isBookmarked: true,
          likes: '2k',
          time: '41hr ago',
          imageFileName: Assets.img.posts.small.smallPost4.path),
    ];
  }
}

class StoryData {
  static List<Story> get stories {
    return [
      Story(
          id: 1001,
          name: 'Emilia',
          imageFileName: Assets.img.stories.story1.path,
          iconFileName: Assets.img.icons.category1.path,
          isViewed: false),
      Story(
          id: 1002,
          name: 'Richard',
          imageFileName: Assets.img.stories.story2.path,
          iconFileName: Assets.img.icons.category2.path,
          isViewed: false),
      Story(
          id: 1003,
          name: 'Jasmine',
          imageFileName: Assets.img.stories.story3.path,
          iconFileName: Assets.img.icons.category3.path,
          isViewed: true),
      Story(
          id: 1004,
          name: 'Lucas',
          imageFileName: Assets.img.stories.story4.path,
          iconFileName: Assets.img.icons.category4.path,
          isViewed: false),
      Story(
          id: 1005,
          name: 'Hendri',
          imageFileName: Assets.img.stories.story5.path,
          iconFileName: Assets.img.icons.category4.path,
          isViewed: true),
      Story(
          id: 1006,
          name: 'Hendri',
          imageFileName: Assets.img.stories.story6.path,
          iconFileName: Assets.img.icons.category1.path,
          isViewed: false),
      Story(
          id: 1007,
          name: 'Hendri',
          imageFileName: Assets.img.stories.story7.path,
          iconFileName: Assets.img.icons.category4.path,
          isViewed: true),
      Story(
          id: 1008,
          name: 'Hendri',
          imageFileName: Assets.img.stories.story8.path,
          iconFileName: Assets.img.icons.category3.path,
          isViewed: false),
    ];
  }
}
