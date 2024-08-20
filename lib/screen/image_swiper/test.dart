import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({super.key});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];
  // GlobalKey _sliderKey = GlobalKey();
  bool _isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Slider"),
      ),
      body: Container(
        height: 500,
        child: CarouselSlider.builder(
            // key: _sliderKey,
            unlimitedMode: true,
            slideBuilder: (index) {
              return Container(
                alignment: Alignment.center,
                color: colors[index],
                child: Text(
                  letters[index],
                  style: TextStyle(fontSize: 200, color: Colors.white),
                ),
              );
            },
            slideTransform: CubeTransform(),
            slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 32),
            ),
            itemCount: colors.length),
      ),
    );
  }
}
