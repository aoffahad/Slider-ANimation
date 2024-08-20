import 'dart:async';

import 'package:animation_in_container/screen/fact_slider/data_class/item_data.dart';
import 'package:animation_in_container/screen/fact_slider/fact_slider_animator.dart';
import 'package:animation_in_container/screen/image_swiper/image_swiper.dart';
import 'package:animation_in_container/screen/image_swiper/test.dart';
import 'package:animation_in_container/screen/new_course/new_course_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FactSliderAnimator(),
            ),
            SliverToBoxAdapter(
              child: ImageSwiper(_visible),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "New Course",
                style: TextStyle(color: Color(0xff0083A4), fontSize: 25),
              ),
            ),
            SliverToBoxAdapter(
              child: NewCourseList(_visible),
            )
          ],
        ));
  }
}
