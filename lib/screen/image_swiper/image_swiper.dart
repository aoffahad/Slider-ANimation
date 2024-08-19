import 'package:flutter/material.dart';

class ImageSwiper extends StatefulWidget {
  const ImageSwiper({super.key});

  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Container(
      padding: EdgeInsets.only(bottom: 25.0, top: 5.0, left: 15, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Text(
              // heading.toString(),
              "This is Heading Test",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              // subHeading.toString(),
              "This is Sub Heading Test",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
