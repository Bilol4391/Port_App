import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_app/projects.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => MyProject(),
      '/': (context) => MyHome(),
      '/about': (context) => MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 20),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assests/myself-removebg-preview.png',
                  height: 700,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.60),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Bilol Abdunazarov',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse('https://t.me/Bilol0004'),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            launchUrl(
                                Uri.parse('https://www.instagram.com/bilolabdunazarov_/'),
                                mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse('https://www.linkedin.com/in/bilol-abdunazarov-61a4a5262/'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse('https://github.com/Bilol4391'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse('https://www.facebook.com/bilol.abdunazarov.96'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse('https://mail.google.com/mail/u/0/#inbox'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.mailBulk,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: 40,
      //       ),
      //       ShaderMask(
      //         shaderCallback: (rect) {
      //           return LinearGradient(
      //             begin: Alignment.center,
      //             end: Alignment.bottomCenter,
      //             colors: [Colors.black, Colors.transparent],
      //           ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //         },
      //         blendMode: BlendMode.dstIn,
      //         child: Image.asset(
      //           'assests/bnw.png',
      //           height: 400,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(
      //         'Hello I am',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text('Siddharth Chopra',
      //           style: TextStyle(color: Colors.white, fontSize: 40)),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         'Software Developer',
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       SizedBox(
      //         child: TextButton(
      //           onPressed: () {},
      //           child: Text('Hire Me'),
      //           style: TextButton.styleFrom(
      //             primary: Colors.black,
      //             backgroundColor: Colors.white, // Background Color
      //           ),
      //         ),
      //         width: 120,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
