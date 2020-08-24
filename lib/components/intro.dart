import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/skills.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(image: AssetImage('assets/images/me.jpg')),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Mia(Mirong) Zou',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('DEVELOPER / REGISTERED DIETITIAN',
                  style: TextStyle(fontSize: 18)),
            ),
            Divider(
              color: Colors.black54,
              indent: 120,
              endIndent: 120,
              height: 40,
              thickness: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
              child: Text(
                  'I am a self-motivated developer with a passion for code writing. I particularly enjoy building pieces with Flutter. Currently working as a mobile developer intern.'),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                child: Text(
                    'Previously worked as a Registered Dietitian I possess enhanced problem-solving skills similar to those required for software development. I can effectively break a big problem into smaller components where I aim to fix one piece at a time efficiently.')),
          ],
        ),
      ),
    );
    //  SafeArea(
    //       child: Container(
    //         decoration: BoxDecoration(
    //             image: DecorationImage(
    //                 image: AssetImage('assets/skills.png'),
    //                 fit: BoxFit.cover)),
    //       ),
    //     ),
  }
}
