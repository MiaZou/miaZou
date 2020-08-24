import 'package:flutter/material.dart';
import '../presentation/my_flutter_app_icons.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/skills.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36),
            GetSkillWidget(MyFlutterApp.node_js, 'JavaScript'),
            GetSkillWidget(MyFlutterApp.right_open, 'Dart'),
            GetSkillWidget(MyFlutterApp.ruby, 'Ruby'),
            GetSkillWidget(MyFlutterApp.html5, 'HTML5&CSS'),
            GetSkillWidget(MyFlutterApp.google, 'Flutter'),
            GetSkillWidget(MyFlutterApp.github, 'Git'),
            GetSkillWidget(MyFlutterApp.phone_iphone, 'Xcode'),
            GetSkillWidget(MyFlutterApp.android, 'Android Studio'),
            GetSkillWidget(MyFlutterApp.bitbucket, 'BitBucket'),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.fromLTRB(62, 18, 0, 0),
              child: Text(
                'and More...',
                style: TextStyle(fontSize: 24, fontFamily: 'RobotoSlab'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GetSkillWidget extends StatelessWidget {
  GetSkillWidget(this.icon, this.text);

  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(54, 16, 0, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 24, 8),
            child: Icon(icon),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 24, fontFamily: 'RobotoSlab'),
          ),
        ],
      ),
    );
  }
}
