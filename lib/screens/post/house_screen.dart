import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/button_dynamic.dart';
import '../../widgets/headings_with_subHeadings.dart';
import '../../widgets/keywords.dart';

class HouseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HouseScreenState();
  }
}

class _HouseScreenState extends State<HouseScreen> {
  @override
  int _city = 0;
  int _selectRelatedShare = 0;
  double _budget = 3000.0;
  void checkLocation(int index) {
    setState(() {
      _city = index;
      debugPrint("city is $_city");
    });
  }

  void selectRelatedShare(int index) {
    setState(() {
      _selectRelatedShare = index;
      debugPrint("Related search is $_selectRelatedShare");
    });
  }

  void selectBudget(double index) {
    setState(() {
      _budget = index;
      debugPrint("budget is $_budget");
    });
  }

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
                      debugPrint("Opening Explore Houses");
                      checkLocation(index);
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
                                  _city == index
                                      ? const Padding(
                                          padding: EdgeInsets.only(
                                              top: 0.0,
                                              right: 8.0,
                                              bottom: 8.2),
                                          child: Align(
                                            child: Icon(
                                              Icons.check_circle,
                                              size: 18,
                                              color: Colors.green,
                                            ),
                                            alignment: Alignment.topRight,
                                          ),
                                        )
                                      : Container(
                                          padding: EdgeInsets.all(8),
                                        ),
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
                child: Text(
                  "Related Search",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      selectRelatedShare(index);
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KeywordWidget(
                              keyword: "2BHK",
                            ),
                            _selectRelatedShare == index
                                ? Icon(
                                    Icons.check_circle,
                                    size: 18,
                                    color: Colors.green,
                                  )
                                : Container()
                          ]),
                    ),
                  );
                }),
            const SizedBox(
              // height: (MediaQuery.of(context).size.width / 20),
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    _budget.toString() + "/-",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            ]),
            // SizedBox(
            //   width: double.maxFinite,
            //   child: CupertinoSlider(
            //     min: 0.0,
            //     max: 100.0,
            //     value: _budget,
            //     activeColor: CupertinoColors.activeGreen,
            //     thumbColor: CupertinoColors.systemPink,
            //     divisions: 10,
            //     onChanged: (value) {
            //       debugPrint("value is $value");
            //       selectBudget(value);
            //     },
            //   ),
            // ),
            Slider(
              min: 3000.0,
              max: 25000.0,
              value: _budget,
              divisions: 25,
              label: '${_budget.round()}',
              onChanged: (value) {
                selectBudget(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "???",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                      Text(
                        "3,000",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 10),
                  ),
                  const Text(
                    "-",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 10),
                  ),
                  Row(
                    children: [
                      Text(
                        "???",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ),
                      Text(
                        "25,000",
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
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.multiline,

                inputFormatters: [
                  LengthLimitingTextInputFormatter(1000),
                ],
                // onChanged: (value) => controller.validate(),
                // onSubmitted: (value) => controller.onSubmit(),
              ),
            ),
            InkWell(
              onTap: () {
                test();
              },
              child: ButtonState(
                text: "Submit",
              ),
            )
          ],
        ),
      ),
    );
  }

  void test() {
    debugPrint("Testing buttion");
  }
}
