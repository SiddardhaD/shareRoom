import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Advertise extends StatelessWidget {
  const Advertise({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              placeholder: (context, url) => Image.asset(
                "assets/bg/family.jpg",
                fit: BoxFit.cover,
              ),
              fit: BoxFit.fitHeight,
              imageUrl:
                  'https://www.creatopy.com/blog/wp-content/uploads/2018/01/What-is-the-best-way-to-advertise-on-Facebook-robi_Blog-Post.jpg',
              errorWidget: (c, o, s) =>
                  Image.asset("assets/bg/family.jpg", fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
            left: size.width / 2.5,
            top: size.height / 6,
            child: TextButton(
                onPressed: () {
                  debugPrint("Know more is clicked");
                },
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 2, color: Colors.white)),
                    foregroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30))),
                child: Row(
                  children: const [
                    Text(
                      'Know More',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_circle_down_sharp,
                      color: Colors.white,
                    ),
                  ],
                ))),
      ],
    );
  }
}
