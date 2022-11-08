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
                      'https://th.bing.com/th/id/R.6d80f9edc5543197290ffab1211cd4c2?rik=lk2O9aYiUPyLvQ&riu=http%3a%2f%2fpapers.co%2fwallpaper%2fpapers.co-af13-familyguy-simpsons-comics-illust-tv-art-36-3840x2400-4k-wallpaper.jpg&ehk=3M%2bE9rva1EnNgYcMaeVpSzQ5aXTPfEFi6VyEdZYSWHo%3d&risl=&pid=ImgRaw&r=0',
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
