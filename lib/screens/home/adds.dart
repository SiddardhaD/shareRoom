import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Adds extends StatelessWidget {
  const Adds({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 2.5,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                debugPrint("beforee calling Announcement count${""}");
              }),
              child: Card(
                elevation: 1,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
                child: CachedNetworkImage(
                    placeholder: (context, url) => Image.asset(
                          "assets/bg/family.jpg",
                          fit: BoxFit.fill,
                        ),
                    // fit: BoxFit.fill,
                    height: 100,
                    imageUrl:
                        'https://www.sheryna.ph/media/fotos/southernhomes_2_1478181579.JPG',
                    errorWidget: (c, o, s) => Image.asset(
                          "assets/bg/family.jpg",
                          fit: BoxFit.fill,
                        )),
              ),
            );
          })),
    );
  }
}
