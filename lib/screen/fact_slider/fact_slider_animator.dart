import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_class/item_data.dart';

class FactSliderAnimator extends StatefulWidget {
  const FactSliderAnimator({super.key});

  @override
  State<FactSliderAnimator> createState() => _FactSliderAnimatorState();
}

class _FactSliderAnimatorState extends State<FactSliderAnimator>
    with TickerProviderStateMixin {
  final itemData = ItemList.items;
  AnimationController? animation;
  Animation<double>? _fadeInFadeOut;
  int index = 0;
  int? factsLen;
  bool _disposed = false;
  @override
  void initState() {
    super.initState();
    // final sliderFacts = Provider.of<HomeDataProvider>(context, listen: false);
    factsLen = itemData!.length - 1;
    animation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0)
        .animate(animation as Animation<double>);

    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Timer(Duration(seconds: 4), () {
          if (!_disposed) {
            animation!.reverse();
          }
        });
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          if (index < factsLen!) {
            index = index + 1;
          } else {
            index = 0;
          }
        });
        Timer(Duration(milliseconds: 600), () {
          if (!_disposed) {
            animation!.forward();
          }
        });
      }
    });
    animation!.forward();
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).orientation == Orientation.landscape
          ? 120
          : MediaQuery.of(context).size.height / 9,
      margin: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 23.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6E1A52),
              Color(0xFFF44A4A),
            ]),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x1c2464).withOpacity(0.30),
            blurRadius: 15.0,
            offset: Offset(0.0, 20.5),
            spreadRadius: -15.0,
          ),
        ],
      ),
      child: FadeTransition(
        opacity: _fadeInFadeOut as Animation<double>,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.laptop,
                size: 55,
                color: Colors.white,
              ),
              SizedBox(
                width: index == 0 ? 10 : 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${itemData![index].title}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // Icon(itemData![index].icon)
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${itemData![index].subtitle}",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
