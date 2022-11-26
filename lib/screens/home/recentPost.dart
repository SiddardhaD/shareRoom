import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../descriptions/item_description_screen.dart';
import '../inbox/chat_screen.dart';

class RecentPost extends StatelessWidget {
  const RecentPost({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 3,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                debugPrint("beforee calling Announcement count${""}");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ItemDescription()));
              }),
              child: Row(children: [
                Card(
                  elevation: 1,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  child: Container(
                      width: (MediaQuery.of(context).size.width / 6),
                      height: (MediaQuery.of(context).size.height / 10),
                      child: CachedNetworkImage(
                          placeholder: (context, url) => Image.asset(
                                "assets/bg/loading.jpg",
                                fit: BoxFit.fill,
                                // height: 40,
                                // width: 20,
                              ),
                          // fit: BoxFit.fill,
                          // height: 100,
                          imageUrl:
                              'https://img.squareyards.com/secondaryPortal/637508097033298430-080321021503153.jpg',
                          errorWidget: (c, o, s) => Image.asset(
                                "assets/bg/loading.jpg",
                                fit: BoxFit.fill,
                                height: 20,
                                width: 40,
                              ))),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "2BHK in Kondapur",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: const [
                        Text(
                          "Posted by",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Peter Griffins",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 6, 242, 73)),
                        )
                      ]),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.phone),
                      onPressed: _makingPhoneCall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 5),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.message_sharp),
                      onPressed: () {
                        debugPrint("Message Them");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChatWe()),
                        );
                      },
                    ),
                  ),
                )
              ]),
            );
          })),
    );
  }

  _makingPhoneCall() async {
    var url = Uri.parse("tel:9985091823");
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      throw 'Could not launch $url';
    }
  }
}

class BrandShimmer extends StatelessWidget {
  final bool isHomePage;
  BrandShimmer({required this.isHomePage});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: (1 / 1.3),
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
      ),
      itemCount: isHomePage ? 8 : 30,
      shrinkWrap: true,
      physics: isHomePage ? NeverScrollableScrollPhysics() : null,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          enabled: true,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle))),
            Container(
                height: 10,
                color: Colors.white,
                margin: const EdgeInsets.only(left: 25, right: 25)),
          ]),
        );
      },
    );
  }
}
