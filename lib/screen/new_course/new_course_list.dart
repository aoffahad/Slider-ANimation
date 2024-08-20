import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'new_course_data.dart';

class NewCourseList extends StatelessWidget {
  NewCourseList(this._visible);
  bool _visible;
  final courseData = NewCourseDataItem.items;
  Widget newCourseTile(BuildContext context, NewCourseDataModel courseData) {
    return _visible == true
        ? Container(
            width: MediaQuery.of(context).orientation == Orientation.landscape
                ? 300
                : MediaQuery.of(context).size.width / 1.32,
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x1c2464).withOpacity(0.30),
                    blurRadius: 15.0,
                    offset: const Offset(0.0, 20.5),
                    spreadRadius: -15.0)
              ],
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
              child: InkWell(
                highlightColor: Colors.white10,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: courseData.courseImage == null
                              ? Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "assets/slider_image/default.jpg",
                                      fit: BoxFit.cover,
                                      height: 300,
                                    ),
                                  ),
                                )
                              : CachedNetworkImage(
                                  imageUrl: courseData.courseImage,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  placeholder: (context, url) => Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/placeholder/new_course.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                courseData.courseTitle,
                                maxLines: 2,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),

                              /// Date
                              // courseDate(details),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    size: 17,
                                    color: Color(0xff6E1A52),
                                  ),
                                  Text(
                                    "${courseData.courseEntryTime}",
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Mada',
                                      fontWeight: FontWeight.w500,
                                      foreground: Paint()
                                        ..shader = const LinearGradient(
                                          begin: Alignment(-1.0, -4.0),
                                          end: Alignment(1.0, 4.0),
                                          stops: [0.3, 1.0],
                                          colors: <Color>[
                                            Color(0xff6E1A52),
                                            Color(0xffF44A4A)
                                          ],
                                        ).createShader(
                                          Rect.fromLTWH(100, 0, 100, 0),
                                        ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).orientation == Orientation.landscape
                ? 300
                : MediaQuery.of(context).size.width / 1.32,
            height: 300,
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
            child: Shimmer.fromColors(
              baseColor: Color(0xFFd3d7de),
              highlightColor: Color(0xFFe2e4e9),
              child: const Card(
                elevation: 0.0,
                color: Color.fromRGBO(45, 45, 45, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 18.0, bottom: 24.0, top: 5.0),
        itemBuilder: (BuildContext context, int index) {
          if (_visible) {
            return newCourseTile(context, courseData[index]);
          } else {
            return Container(
              width: MediaQuery.of(context).orientation == Orientation.landscape
                  ? 300
                  : MediaQuery.of(context).size.width / 1.32,
              height: 135.0,
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
              child: Shimmer.fromColors(
                baseColor: const Color(0xFFd3d7de),
                highlightColor: const Color(0xFFe2e4e9),
                child: const Card(
                  elevation: 0.0,
                  color: Color.fromRGBO(45, 45, 45, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ),
            );
          }
        },
        scrollDirection: Axis.horizontal,
        itemCount: courseData!.length,
      ),
    );
  }
}
