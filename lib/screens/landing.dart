import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:miaZou/constants.dart';

class Landing extends StatelessWidget {
  static const String id = 'landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TypewriterAnimatedTextKit(
                    speed: Duration(seconds: 1),
                    text: ['Mobile Developer'],
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                    textStyle: mainPosText),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Mia Zou', style: mainNameText),
              ),
              Text('Sunnyvale, CA'),
              SizedBox(height: 36),
              RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'control');
                  },
                  child: Text('More'),
                  color: Color(0xFF505458),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
