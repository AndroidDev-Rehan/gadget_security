import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../models/feature.dart';
import 'listwidget.dart';

class FeatureWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<Widget> l = [];

    for (int i = 0; i < 6; i++) {

      l.add(ListViews(kFeatureData:Feature(title: "Gadget", Image: "assets/images/app_dev.jpeg"), index: i));
    }


    return Container(
      height: 280,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          height: 240.0,
          enlargeCenterPage: true,
          viewportFraction: 0.7,
          aspectRatio: 8.0,
          initialPage: 0,
          clipBehavior: Clip.hardEdge,




        ),
        items: l,
      )
    );
  }
}
