import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';
import 'package:splashscreen/splashscreen.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new HomePage(),
        title: new Text('Welcome In SplashScreen'),
        image: new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs2dwEKIVkZBsjdEBAYS31Ai6SKT4y3U7jAg&usqp=CAU"),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red
    );
  }
}
