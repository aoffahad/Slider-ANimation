import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

import 'image_swiper_data.dart';

class ImageSwiper extends StatelessWidget {
  ImageSwiper(this._visible);

  // GlobalKey _sliderKey = GlobalKey();
  final bool _visible;
  final sliderData = ImageSwiperData.items;

  Widget detailsOnImage(ImageSwiperDataClass sliderData) {
    return Positioned(
      child: Container(
        padding: EdgeInsets.only(bottom: 25.0, top: 5.0, left: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Text(
                sliderData.heading.toString(),
                // "This is Test",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Text(
                sliderData.subheading.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showShimmer(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // height: 250,
        padding: EdgeInsets.only(bottom: 23.0, top: 5.0),
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        child: Shimmer.fromColors(
          baseColor: Color(0xFFd3d7de),
          highlightColor: Color(0xFFe2e4e9),
          child: Card(
            elevation: 0.0,
            color: Color.fromRGBO(45, 45, 45, 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 70
                      : MediaQuery.of(context).size.height / 11,
            ),
          ),
        ),
      ),
    );
  }

  Widget showImage(Orientation orientation, ImageSwiperDataClass sliderData) {
    return AspectRatio(
      aspectRatio: orientation == Orientation.portrait ? 17 / 9 : 20.2 / 6,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: sliderData.imageSliderImage,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage('assets/slider_image/default.jpg'),
                fit: BoxFit.cover,
              ),
            )),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.0,
                    0.6
                  ],
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.0),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Widget showSlider(
      Orientation orientation, List<ImageSwiperDataClass> sliderImage) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x1c2464).withOpacity(0.30),
              blurRadius: 25.0,
              offset: Offset(0.0, 20.0),
              spreadRadius: -25.0,
            )
          ],
        ),
        child: CarouselSlider(
          // Enable autoplay
          autoSliderDelay: Duration(seconds: 5),
          autoSliderTransitionTime: Duration(milliseconds: 1500),
          autoSliderTransitionCurve: Curves.easeOutCubic,
          enableAutoSlider: true,
          unlimitedMode: true,
          // Other carousel properties
          viewportFraction: 1.0, // Display one item at a time
          slideIndicator: CircularSlideIndicator(
            // Add the indicator
            padding:
                EdgeInsets.only(bottom: 20), // Adjust the padding as needed
            indicatorBorderColor: Colors.transparent,
            indicatorBackgroundColor: Colors.white,
            currentIndicatorColor: Colors.red,
            indicatorRadius: 4, // Optional: Customize the indicator size
          ),

          children: sliderImage.map((item) {
            return Padding(
              padding: const EdgeInsets.only(
                  bottom: 15.0, top: 5.0, left: 15, right: 15),
              child: Stack(
                children: [
                  showImage(orientation, item),
                  detailsOnImage(item),
                ],
              ),
            );
          }).toList(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return _visible
        ? showSlider(orientation, sliderData)
        : showShimmer(context);
  }
}
