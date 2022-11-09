import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: size.height / 3.5,
        child: ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 130),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width / 5.9),
                        height: (MediaQuery.of(context).size.width / 5.9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              (MediaQuery.of(context).size.width / 5))),
                          color: Theme.of(context).highlightColor,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(
                              (MediaQuery.of(context).size.width / 5))),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            // height: 20,
                            // width: 20,
                            placeholder: (context, url) => Image.asset(
                                "assets/bg/pc.png",
                                fit: BoxFit.cover),
                            imageUrl:
                                "https://www.looper.com/img/gallery/family-guy-fan-theories-that-change-everything/l-intro-1640155221.jpg",
                            errorWidget: (c, o, s) => Image.asset(
                              "assets/bg/pc.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (MediaQuery.of(context).size.width / 4) * 0.3,
                        width: MediaQuery.of(context).size.width / 4.2,
                        child: const Center(
                            child: Text(
                          "Glen",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    )
        // GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 4,
        //     childAspectRatio: (1 / 1.3),
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 5,
        //   ),
        //   itemCount: 8,
        //   shrinkWrap: true,
        //   physics: NeverScrollableScrollPhysics(),
        //   itemBuilder: (BuildContext context, int index) {
        //     return InkWell(
        //       onTap: () {},
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.stretch,
        //         children: [
        //           Expanded(
        //             child: Container(
        //               padding: const EdgeInsets.all(8),
        //               decoration: BoxDecoration(
        //                   color: Theme.of(context).highlightColor,
        //                   shape: BoxShape.circle,
        //                   boxShadow: [
        //                     BoxShadow(
        //                         color: Colors.grey.withOpacity(0.15),
        //                         blurRadius: 15,
        //                         spreadRadius: 1)
        //                   ]),
        //               child: ClipOval(
        //                 child: CachedNetworkImage(
        //                   placeholder: (context, url) => Image.asset(
        //                     "assets/bg/pc.png",
        //                     fit: BoxFit.cover,
        //                   ),
        //                   fit: BoxFit.fitWidth,
        //                   imageUrl:
        //                       "https://www.looper.com/img/gallery/family-guy-fan-theories-that-change-everything/l-intro-1640155221.jpg",
        //                   errorWidget: (c, o, s) => Image.asset(
        //                     "assets/bg/pc.png",
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           SizedBox(
        //             height: (MediaQuery.of(context).size.width / 4) * 0.3,
        //             child: const Center(
        //                 child: Text(
        //               "Name",
        //               maxLines: 1,
        //               overflow: TextOverflow.ellipsis,
        //               textAlign: TextAlign.center,
        //               style: TextStyle(fontSize: 12),
        //             )),
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // ),
        );
  }
}
