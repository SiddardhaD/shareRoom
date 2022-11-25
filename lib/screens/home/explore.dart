import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Explores extends StatelessWidget {
  const Explores({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: size.height / 3.5,
        child: ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 130),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {
                debugPrint("Opening Explore widget");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 3),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          width: (MediaQuery.of(context).size.width / 4),
                          height: (MediaQuery.of(context).size.width / 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                (MediaQuery.of(context).size.width / 20))),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Column(children: const [
                                        Icon(Icons.home_outlined,
                                            color: Colors.blue, size: 25),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "House",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.arrow_circle_right,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
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
