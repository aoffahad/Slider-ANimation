import 'dart:async';

import 'package:animation_in_container/screen/fact_slider/data_class/item_data.dart';
import 'package:animation_in_container/screen/fact_slider/fact_slider_animator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Column(
        children: [
          FactSliderAnimator(),
        ],
      ),
    );
  }
}
