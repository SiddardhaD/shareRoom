import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final String title;
  const Headings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: size.height / 50),
    );
  }
}

class SubHeadings extends StatelessWidget {
  final String title;
  const SubHeadings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Text(
      title,
      maxLines: 2,
      style: TextStyle(color: Colors.white, fontSize: size.height / 80),
    );
  }
}

class PriceHeadings extends StatelessWidget {
  final String title;
  const PriceHeadings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Text(
      title + "/-",
      maxLines: 2,
      style: TextStyle(
          color: Colors.white,
          fontSize: size.height / 50,
          fontWeight: FontWeight.bold),
    );
  }
}

class PostedHeadings extends StatelessWidget {
  final String title;
  const PostedHeadings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Text(
      title,
      maxLines: 2,
      style: TextStyle(
          color: Colors.white,
          fontSize: size.height / 80,
          fontWeight: FontWeight.bold),
    );
  }
}
