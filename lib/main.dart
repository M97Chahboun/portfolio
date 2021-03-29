import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          primaryColor: Color(0xff303030), accentColor: Color(0xffffffff)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> btns = [
    "HOME",
    "ABOUT",
    "PROJECTS",
    "SERVICE",
    "PORTFOLIO",
    "CONTACT",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
            color: context.pr,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                info("+212616963589", FontAwesomeIcons.phone),
                info("m97.chahboun@gmail.com", FontAwesomeIcons.envelope),
                const SizedBox(width: 15.0),
                Container(
                    width: 200.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Contact me",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold)),
                        icon(FontAwesomeIcons.facebook),
                        icon(FontAwesomeIcons.linkedin),
                        icon(FontAwesomeIcons.twitter),
                        icon(FontAwesomeIcons.github),
                      ],
                    ))
              ],
            )),
      ),
      body: Container(
        width: context.w,
        height: context.h,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0),
              color: Colors.grey,
              width: context.w,
              height: context.h,
              child: ListView(
                children: [
                  Container(
                      width: context.w,
                      height: context.h * 1.2,
                      padding: EdgeInsets.symmetric(horizontal: 300.0),
                      child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "I’m Mohammed CHAHBOUN,\nfull stack devel­op­er from Assa,\nMorocco. I'm specialize on Flutter and Django",
                                  style: TextStyle(
                                      fontSize: 70.0, color: Colors.white)),
                              Text("I'm Full Stack Developer",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white)),
                              Container(
                                width: 200.0,
                                height: 60.0,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0.0),
                                      side:
                                          MaterialStateProperty.all(BorderSide(
                                        color: Colors.white,
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return Colors.blue;
                                        }
                                        return Colors.transparent;
                                      })),
                                  child: Text("GET STARTED",
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white)),
                                  onPressed: () {},
                                ),
                              )
                            ]),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/home-bg.jpg')))),
                  Container(
                    height: 200.0,
                    color: context.pr,
                  )
                ],
              ),
            ),
            Container(
              color: context.ac,
              width: context.w,
              height: context.h * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Icon(FontAwesomeIcons.terminal, color: Colors.grey),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(" Mohammed",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.grey,
                          ))
                    ],
                  )),
                  const SizedBox(width: 10.0),
                  Container(
                      width: 400.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: btns
                            .map((e) => TextButton(
                                onPressed: () {},
                                child: Text(e,
                                    style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold))))
                            .toList(),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget icon(IconData icn) => Icon(icn, size: 16.0);
  Widget info(String title, IconData icn) => Container(
          child: Row(children: [
        Icon(icn, size: 14.0, color: Color(0xff28a7e9)),
        const SizedBox(width: 10.0),
        Text(title, style: TextStyle(fontSize: 14.0, color: Colors.grey))
      ]));
}

extension Cus on BuildContext {
  Color get pr => Theme.of(this).primaryColor;
  Color get ac => Theme.of(this).accentColor;
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;
}
