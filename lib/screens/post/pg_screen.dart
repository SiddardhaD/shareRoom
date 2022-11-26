import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/button_dynamic.dart';
import '../../widgets/headings_with_subHeadings.dart';
import '../../widgets/keywords.dart';

class PGScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PGScreenState();
  }
}

class _PGScreenState extends State<PGScreen> {
  @override
  Widget build(BuildContext context) {
    double _value = 20;
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 10, 2, 70),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            const Headings(
              head: "Are you",
              body: "looking for PG Near to ...",
            ),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.white), //<-- SEE HERE
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Choose Location',
                    hintText: 'Location',
                    suffixIcon: IconButton(
                        onPressed: () {
                          debugPrint("Fetching Location");
                        },
                        icon: const Icon(Icons.location_searching_outlined)),
                    labelStyle: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Popular Cities",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  // mainAxisSpacing: 0.5,
                  // crossAxisSpacing: 5,
                ),
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      debugPrint("Opening Explore widget");
                    },
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
                                  Icon(Icons.location_city,
                                      color: Colors.blue, size: 25),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Hyderabad",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Related Search",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return KeywordWidget(
                    keyword: "3 Share",
                  );
                }),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Budget",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Slider(
              min: 0.0,
              max: 100.0,
              value: _value,
              divisions: 10,
              label: '${_value.round()}',
              onChanged: (value) {
                setState(() {
                  debugPrint(value.toString());
                  _value = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "₹",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "10",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 10),
                  ),
                  const Text("-"),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 10),
                  ),
                  Row(
                    children: [
                      Text(
                        "₹",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                      Text(
                        "1,000",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Specific Concern",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 8,
                // controller: controller.messageController,
                decoration: const InputDecoration(
                    labelText: 'Ex: I am an Introver, please Take care',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Colors.blue), //<-- SEE HERE
                    ),
                    border: InputBorder.none),
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,

                inputFormatters: [
                  LengthLimitingTextInputFormatter(1000),
                ],
                // onChanged: (value) => controller.validate(),
                // onSubmitted: (value) => controller.onSubmit(),
              ),
            ),
            ButtonState(
              text: "Submit",
            )
          ],
        ),
      ),
    );
  }
}
