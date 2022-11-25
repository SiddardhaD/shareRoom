import 'package:flutter/material.dart';

class KeywordWidget extends StatelessWidget {
  final String keyword;
  KeywordWidget({required this.keyword});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (MediaQuery.of(context).size.width / 3),
        height: (MediaQuery.of(context).size.width / 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular((MediaQuery.of(context).size.width / 20))),
          color: Colors.white,
        ),
        child: InkWell(
          onTap: () {
            debugPrint("Keyword clicked");
          },
          child: Center(
            child: Text(
              keyword,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ));
  }
}
