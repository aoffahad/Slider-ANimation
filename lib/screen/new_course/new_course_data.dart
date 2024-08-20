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
            "https://media.istockphoto.com/id/1486721631/photo/e-learning-graduate-certificate-program-concept-businessman-hand-holding-light-bulb-with.jpg?s=2048x2048&w=is&k=20&c=x3c_xCOP7PY4z_e2x9bZdBXl4Bt3kazGIw_6R3l_cno=",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "iOS SwiftUI Basic Structure",
        courseImage:
            "https://media.istockphoto.com/id/1486721631/photo/e-learning-graduate-certificate-program-concept-businessman-hand-holding-light-bulb-with.jpg?s=2048x2048&w=is&k=20&c=x3c_xCOP7PY4z_e2x9bZdBXl4Bt3kazGIw_6R3l_cno=",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "Android Development",
        courseImage:
            "https://media.istockphoto.com/id/1486721631/photo/e-learning-graduate-certificate-program-concept-businessman-hand-holding-light-bulb-with.jpg?s=2048x2048&w=is&k=20&c=x3c_xCOP7PY4z_e2x9bZdBXl4Bt3kazGIw_6R3l_cno=",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
    NewCourseDataModel(
        courseTitle: "Web Development",
        courseImage:
            "https://media.istockphoto.com/id/1486721631/photo/e-learning-graduate-certificate-program-concept-businessman-hand-holding-light-bulb-with.jpg?s=2048x2048&w=is&k=20&c=x3c_xCOP7PY4z_e2x9bZdBXl4Bt3kazGIw_6R3l_cno=",
        courseEntryTime: DateFormat.yMMMd().format(DateTime.now())),
  ];
}
