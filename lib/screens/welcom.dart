import 'package:ddialyse/screens/const.dart';
import 'package:ddialyse/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class welcom extends StatefulWidget {
  welcom({Key? key}) : super(key: key);

  @override
  _welcomState createState() => _welcomState();
}

class _welcomState extends State<welcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(50),
                      backgroundBlendMode: BlendMode.darken),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 170,
                    width: 160,
                    child: Image.asset("asset/logo.png")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(50),
                      backgroundBlendMode: BlendMode.darken),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Measure and Calibrate \nYour Renal Function ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: primary,
                      height: 1.5,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'track your diabetes progression \nand get a personalized diet ',
                  style: TextStyle(
                    fontSize: 17,
                    color: primary,
                    height: 1.5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: bleu,
                      borderRadius: BorderRadius.circular(50),
                      backgroundBlendMode: BlendMode.darken),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Get Started ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            color: primary,
                          ),
                        ),
                        Icon(
                          LineIcons.angleRight,
                          color: primary,
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
