import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  final List<String> imageList = [
    "assets/images/babyImage.png",
    "assets/images/babyImage.png",
    "assets/images/babyImage.png",

  ];

  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index, realIndex) {
            return AssetImageWidget(url: imageList[index],width: 1.sw/1.15);
          },
          carouselController: _carouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        buildIndicators(imageList.length),
      ],
    );
  }

  Widget buildIndicators(int length) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
            (index) => Container(
          width: 15,
          height: 3,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: ShapeDecoration(
            color: index == _currentIndex ? const Color(0xFF0C4A9F) : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(), 

            ),
          ),
        ),
      ),
    );
  }
}