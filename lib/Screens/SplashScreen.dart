import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whats_up_doc/Screens/MainPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _terminateSplashScreen() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MainPage();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _terminateSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // change the bg color of the page
            Container(color: Colors.grey[300]),
            Shimmer.fromColors(
              // change base color to change the color of the image and text
              baseColor: Color(0xFFB5B8BD),
              // change the highlight color to change the color of the sliding shimmer
              highlightColor: Color(0xFFB5B8BD).withOpacity(0.4),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset('images/bugs-bunny-square.png'),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "WHATS UP DOC ?",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Pacifico',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
