import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final String head;
  final String body;
  const Headings({super.key, required this.head, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            head,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 6, 242, 73)),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            body,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ]),
    );
  }
}
