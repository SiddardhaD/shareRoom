import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ReferralID extends StatefulWidget {
  @override
  _ReferralIDState createState() => _ReferralIDState();
}

class _ReferralIDState extends State<ReferralID> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.white,
      strokeWidth: 2,
      dashPattern: [
        5,
        5,
      ],
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          "SHAREWE-1287",
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
      ),
    );
  }
}
