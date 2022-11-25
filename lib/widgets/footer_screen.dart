import 'package:flutter/material.dart';

class FooterPageState extends StatelessWidget {
  const FooterPageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // half of height and width of Image
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.audiotrack,
                            size: 20.0,
                          ),
                          color: const Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    )),
                SizedBox(
                    height: 105.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // half of height and width of Image
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.fingerprint,
                            size: 20.0,
                          ),
                          color: const Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    )),
                SizedBox(
                    height: 105.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // half of height and width of Image
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.call,
                            size: 20.0,
                          ),
                          color: const Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    )),
              ],
            ),
          ),
          const Text(
            'Copyright ©2020, All Rights Reserved.',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Powered by ShareWe',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Colors.white),
          ),
        ]);
  }
}
