import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import '../presentation/my_flutter_app_icons.dart';

class Contact extends StatelessWidget {
  static String id = 'contact';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/contact.jpg'),
              fit: BoxFit.cover)),
      child: Column(children: [
        SizedBox(height: 80),
        Expanded(
            child: Column(
          children: [
            ContactItem(Icon(Icons.email), 'mirongzou@gmail.com', () async {
              var url = Uri(
                  scheme: 'mailto',
                  path: 'mirongzou@gmail.com',
                  queryParameters: {'subject': 'Connect with Mia'}).toString();
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not link to mail services';
              }
            }),
            ContactItem(Icon(MyFlutterApp.linkedin), 'linkedin.com/in/miazou/​',
                () async {
              const _url = 'https://www.linkedin.com/in/miazou/​';
              if (await canLaunch(_url)) {
                await launch(_url);
              } else {
                throw 'Could not launch $_url';
              }
            }),
            ContactItem(Icon(MyFlutterApp.git), 'github.com/MiaZou', () async {
              const _url = 'https://www.github.com/MiaZou';
              if (await canLaunch(_url)) {
                await launch(_url);
              } else {
                throw 'Could not launch $_url';
              }
            }),
          ],
        ))
      ]),
    );
  }
}

class ContactItem extends StatelessWidget {
  ContactItem(this.icon, this.address, this.onTap);

  final Icon icon;
  final String address;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 16, 16, 16),
          child: icon,
        ),
        GestureDetector(
          onTap: () => onTap,
          child: Text(
            address,
            style: TextStyle(fontSize: 22, fontFamily: 'RobotoSlab'),
          ),
        ),
      ],
    );
  }
}
