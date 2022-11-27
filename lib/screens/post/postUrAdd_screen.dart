import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';

import '../../widgets/button_dynamic.dart';
import '../../widgets/input.dart';

class PostYourAddScreen extends StatefulWidget {
  const PostYourAddScreen({super.key});

  @override
  State<PostYourAddScreen> createState() => _PostYourAddScreenState();
}

class _PostYourAddScreenState extends State<PostYourAddScreen> {
  List<Asset> images = <Asset>[];
  TextEditingController inputController = TextEditingController();
  TextEditingController inputLocaionController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController rentController = TextEditingController();
  String? item; //no radio button will be selected on initial

  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImages() async {
    List<Asset> resultList = <Asset>[];

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          actionBarTitle: "FlutterCorner.com",
        ),
      );
    } on Exception catch (e) {
      print(e);
    }

    setState(() {
      images = resultList;
    });
  }

  void setValue(String value) {
    setState(() {
      item = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create ADD Post",
          style: TextStyle(fontSize: 15),
        ),
        shadowColor: Colors.black,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg/appbar.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color.fromARGB(255, 10, 2, 70),
                  Color.fromARGB(255, 2, 0, 14),
                ])),
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MessageField(
                    inputController: inputController,
                  ),
                ),
                // LocationPick(
                //   inputController: inputLocaionController,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationPick(
                    inputController: inputLocaionController,
                  ),
                ),
                Column(
                  children: [
                    RadioListTile(
                      selectedTileColor: Colors.white,
                      title: const Text(
                        "PG",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "PG",
                      groupValue: item,
                      onChanged: (value) {
                        setValue(value.toString());
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "House",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "House",
                      groupValue: item,
                      onChanged: (value) {
                        setValue(value.toString());
                      },
                    ),
                    RadioListTile(
                      title: const Text(
                        "Flat",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: "Flat",
                      groupValue: item,
                      onChanged: (value) {
                        setValue(value.toString());
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DynamicNumberField(
                    hint: "phone",
                    title: "Owners Mobile",
                    inputController: phoneController,
                    lable: "Mobile (Optional)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DynamicNumberField(
                    hint: "ex:1000",
                    title: "Rent",
                    inputController: rentController,
                    lable: "Rent (Optional)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 18,
                    ),
                    TextButton(
                      child: Text(
                        "Add Photos",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: pickImages,
                    )
                  ]),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(images.length, (index) {
                      Asset asset = images[index];
                      return AssetThumb(
                        asset: asset,
                        width: 300,
                        height: 300,
                      );
                    }),
                  ),
                ),
                ButtonState(
                  text: "Submit",
                )
              ],
            )),
      ),
    );
  }
}
