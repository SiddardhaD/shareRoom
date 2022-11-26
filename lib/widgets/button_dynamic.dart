import 'package:flutter/material.dart';

class ButtonState extends StatelessWidget {
  final String? text;
  ButtonState({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 50,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue[300]!,
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: const Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          showCustomDialog(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text!,
              style: const TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomDialog(BuildContext context) {
  var size = MediaQuery.of(context).size;

  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 240,
          child: SizedBox.expand(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        "assets/bg/loading.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                  left: size.width / 4,
                  top: size.height / 4.5,
                  child: TextButton(
                      onPressed: () {
                        debugPrint("Know more is clicked");
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(width: 2, color: Colors.white)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 40)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 30))),
                      child: Row(
                        children: const [
                          Text(
                            'Posted',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ],
                      ))),
            ],
          )),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}
