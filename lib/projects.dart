import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, date, githubLink) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.date_range,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(githubLink),
                          mode: LaunchMode.externalApplication,);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard('FLUTTER', 'Translator', 'A translator app work with Api', '19.01.2023', 'https://github.com/Bilol4391/translator_portfolio_app'),
              projetCard('FLUTTER', 'Furniture Shopping', 'Online shopping including lots of funitures', '25.12.2022', 'https://github.com/Bilol4391/online_furniture_shopping'),
              projetCard('PYTHON', 'Face Detection', 'Attendance using face detection.', '8', 'https://github.com/Bilol4391/translator_portfolio_app'),
              projetCard('C++', 'Chess', 'Multiplayer chess engine.', '7', 'https://github.com/Bilol4391/translator_portfolio_app'),
              projetCard( 'FLUTTER', 'Click 2 Code', 'An online code compiler', '10', 'https://github.com/Bilol4391/translator_portfolio_app')
            ],
          ),
        ),
      ),
    );
  }
}
