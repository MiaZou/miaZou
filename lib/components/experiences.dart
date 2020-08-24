import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  static String id = 'experiences';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/skills.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 54, 16, 16),
                child: Text(
                  'Projects',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
              Column(children: [
                ProjectWidget(
                    Color(0xFFF5D5CD),
                    'VideosApp',
                    'A Youtube clone',
                    'JS, React, Youtube API',
                    AssetImage('assets/images/VideosApp.jpg')),
                ProjectWidget(
                    Color(0xFFBCF6E4),
                    'Forkify',
                    'A recipe search app',
                    'JS, node.JS',
                    AssetImage('assets/images/forkify.png')),
                ProjectWidget(
                    Color(0xFFB8B8F0),
                    'Nomster',
                    'A Yelp clone',
                    'Ruby, Rails, Amazon S3',
                    AssetImage('assets/images/nomster.jpg')),
              ]),
            ],
          ),
        ));
  }
}

class ProjectWidget extends StatelessWidget {
  ProjectWidget(
      this.color, this.title, this.description, this.languages, this.image);

  final Color color;
  final String title;
  final String description;
  final String languages;
  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 38, 0, 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(languages, style: TextStyle(fontSize: 16))),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 0, 22, 0),
                  child: Image(
                    image: image,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.bottomCenter,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
