import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glitters/glitters.dart';

import 'headings.dart';

class BannersWithDetails extends StatelessWidget {
  const BannersWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 3.5,
      child: SafeArea(
        child: Stack(
          children: [
            const GlitterStack(
              width: 500,
              backgroundColor: Color.fromARGB(255, 10, 2, 70),
              duration: Duration(milliseconds: 200),
              interval: Duration.zero,
              color: Color.fromARGB(255, 10, 2, 70),
              maxOpacity: 0.1,
              children: [
                Glitters(
                  color: Colors.orange,
                ),
                Glitters(
                  delay: Duration(milliseconds: 100),
                ),
              ],
            ),
            CarouselSlider.builder(
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
                  onTap: () {
                    debugPrint("Banner with deatils clikced");
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Stack(children: [
                      SizedBox(
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            placeholder: (context, url) => Image.asset(
                              "assets/bg/family.jpg",
                              fit: BoxFit.cover,
                            ),
                            fit: BoxFit.fitWidth,
                            imageUrl:
                                'https://is1-3.housingcdn.com/01c16c28/ce44cdcc37f2651dea4f821987c8de63/v0/fs/2_bhk_independent_house-for-sale-thimmapur_telangana_1-Hyderabad-others.jpg',
                            errorWidget: (c, o, s) => Image.asset(
                                "assets/bg/family.jpg",
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(133, 0, 0, 0),
                      ),
                      Column(children: [
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
                              title:
                                  "Near Kuktapally bustand metro station opp",
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
                                icon: const Icon(
                                    Icons.arrow_circle_right_rounded),
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
                        ),
                      ])
                    ]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
