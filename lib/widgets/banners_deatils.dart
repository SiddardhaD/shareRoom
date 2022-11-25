import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'headings.dart';

class BannersWithDetails extends StatelessWidget {
  const BannersWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 2.5,
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
              child: Column(children: [
                Container(
                  height: size.height / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      placeholder: (context, url) => Image.asset(
                        "assets/bg/family.jpg",
                        fit: BoxFit.cover,
                      ),
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://tse1.mm.bing.net/th?id=OIP.EH8lmJQ_fhwqXHkKrgsqvQAAAA&pid=Api&P=0',
                      errorWidget: (c, o, s) => Image.asset(
                          "assets/bg/family.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Headings(
                            title: "Single bed room",
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: PriceHeadings(
                            title: "2,000",
                          ),
                        ),
                      )
                    ]),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2, left: 8),
                    child: SubHeadings(
                      title: "Near Kuktapally bustand metro station opp",
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: size.width / 1.5,
                        child: const Divider(
                          color: Colors.white,
                          height: 5,
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2, left: 8),
                            child: SubHeadings(
                              title: "Posted on ",
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2, left: 8),
                            child: PostedHeadings(
                              title: "May 20-2022",
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      const SubHeadings(
                        title: "Details",
                      ),
                      IconButton(
                        color: Colors.white,
                        iconSize: 25,
                        icon: const Icon(Icons.arrow_circle_right_rounded),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             const NotificationsScreen()));
                          // debugPrint("Please chose Location");
                        },
                      )
                    ]),
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
