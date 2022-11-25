import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 3.5,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          enlargeCenterPage: true,
          disableCenter: true,
          onPageChanged: (index, reason) {},
        ),
        itemCount: 5,
        itemBuilder: (context, index, _) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  placeholder: (context, url) => Image.asset(
                    "assets/bg/family.jpg",
                    fit: BoxFit.cover,
                  ),
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://i.pinimg.com/originals/61/2c/ae/612caee0c576f498ee26381eb65ddb0d.jpg',
                  errorWidget: (c, o, s) =>
                      Image.asset("assets/bg/family.jpg", fit: BoxFit.cover),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
