import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselItems extends StatefulWidget {
  const CarouselItems({Key? key}) : super(key: key);

  @override
  State<CarouselItems> createState() => _CarouselItemsState();
}

// ignore: unused_element
class _CarouselItemsState extends State<CarouselItems> {
  final assetImages = [
    'assets/carousels/gift.png',
    'assets/carousels/furni.png',
    'assets/carousels/bags.png',
    'assets/carousels/jewellery.png',
    'assets/carousels/mats.png',
    'assets/carousels/teddies.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
          itemCount: assetImages.length,
          itemBuilder: (context, index, realindex) {
            final assetImage = assetImages[index];
            return buildImage(assetImage, index);
          },
          options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              height: 180,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4))),
    );
  }

  Widget buildImage(String assetImage, int index) {
    return Container(
      width: 600,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  assetImage,
                ),
                fit: BoxFit.cover)),
      ),
      color: Colors.grey,
    );
  }
}
