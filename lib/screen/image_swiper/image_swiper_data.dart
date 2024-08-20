import 'package:flutter/material.dart';

class ImageSwiperDataClass {
  final String heading;
  final String subheading;
  final String imageSliderImage;

  ImageSwiperDataClass({
    required this.heading,
    required this.subheading,
    required this.imageSliderImage,
  });
}

class ImageSwiperData {
  static List<ImageSwiperDataClass> items = [
    ImageSwiperDataClass(
        heading: 'Item 1',
        subheading: 'This is the subtitle for item 1',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
    ImageSwiperDataClass(
        heading: 'Item 2',
        subheading: 'This is the subtitle for item 2',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
    ImageSwiperDataClass(
        heading: 'Item 3',
        subheading: 'This is the subtitle for item 3',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
    ImageSwiperDataClass(
        heading: 'Item 4',
        subheading: 'This is the subtitle for item 4',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
    ImageSwiperDataClass(
        heading: 'Item 5',
        subheading: 'This is the subtitle for item 5',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
    ImageSwiperDataClass(
        heading: 'Item 6',
        subheading: 'This is the subtitle for item 6',
        imageSliderImage:
            "https://media.istockphoto.com/id/1487030097/photo/low-code-development-system-concept.jpg?s=2048x2048&w=is&k=20&c=QcJ6BtfKkDnPWA1WGRkl-8QP2dowemvocgWmuJlNhnA="),
  ];
}
