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
                        'https://i.pinimg.com/originals/bc/0e/24/bc0e245e345b8c8b410f8090561f6f89.jpg',
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
