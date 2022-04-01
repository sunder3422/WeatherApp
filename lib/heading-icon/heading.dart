import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 30, left: 30, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.place,
                      size: 15,
                      color: Colors.white,
                    ),
                    Text(
                      "Haldwani",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(FontAwesomeIcons.sun,
                    color: Colors.amber, size: 60 * textScale),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
