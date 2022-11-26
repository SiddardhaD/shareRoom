import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:glitters/glitters.dart';

class Explores extends StatelessWidget {
  const Explores({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              child: Stack(children: [
                const GlitterStack(
                  width: 110,
                  backgroundColor: Color.fromARGB(255, 10, 2, 70),
                  duration: Duration(milliseconds: 200),
                  interval: Duration.zero,
                  color: Color.fromARGB(255, 10, 2, 70),
                  maxOpacity: 0.7,
                  children: [
                    Glitters(
                      color: Colors.orange,
                    ),
                    Glitters(
                      delay: Duration(milliseconds: 100),
                    ),
                  ],
                ),
                Padding(
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
                )
              ]),
            );
          }),
    ));
  }
}
