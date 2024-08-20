import 'package:intl/intl.dart';

class NewCourseDataModel {
  final String courseTitle;
  final String courseImage;
  final String courseEntryTime;
  NewCourseDataModel(
      {required this.courseTitle,
      required this.courseImage,
      required this.courseEntryTime});
}

class NewCourseDataItem {
  static List<NewCourseDataModel> items = [
    NewCourseDataModel(
        courseTitle: "Flutter Beginning to Advance",
        courseImage:
            "https://media.licdn.com/dms/image/D4D12AQFf0PaTXXZVyA/article-cover_image-shrink_720_1280/0/1715751221473?e=2147483647&v=beta&t=zgT5ir5Ozyv23c-b9UNHqoyTQok9rkwjsWE1wSpH4TI",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "iOS SwiftUI Basic Structure",
        courseImage:
            "https://developer.apple.com/news/images/og/swiftui-og.png",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "Android Development",
        courseImage: "https://wallpapercave.com/wp/wp8476357.jpg",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "Web Development",
        courseImage:
            "https://c4.wallpaperflare.com/wallpaper/887/817/276/html-5-html-5-logo-wallpaper-preview.jpg",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
  ];
}
