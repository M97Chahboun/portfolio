import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/tech.dart';

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
  TextStyle boldStyle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 70.0);
  TextStyle normalStyle = TextStyle(fontSize: 70.0, color: Colors.white);
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
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "I’m Mohammed CHAHBOUN,\nfull stack devel­op­er from Assa,\nMorocco. I'm specialize on",
                                    style: normalStyle),
                                TextSpan(text: " Flutter", style: boldStyle),
                                TextSpan(text: " and", style: normalStyle),
                                TextSpan(text: " Django", style: boldStyle),
                              ])),
                              // Text(
                              //     "I’m Mohammed CHAHBOUN,\nfull stack devel­op­er from Assa,\nMorocco. I'm specialize on Flutter and Django",
                              //     style: TextStyle(
                              //         fontSize: 70.0, color: Colors.white)),
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
                      height: 1800.0,
                      color: context.pr,
                      child: Column(children: [
                        Container(
                          height: 600.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "WHAT I CAN ",
                                    style: boldStyle.copyWith(
                                        color: Colors.white, fontSize: 40.0)),
                                TextSpan(
                                    text: "USE",
                                    style: boldStyle.copyWith(fontSize: 40.0))
                              ])),
                              Container(
                                height: 450.0,
                                color: context.pr,
                                child: Wrap(
                                    children: techs
                                        .map((e) => tech(
                                            context, e.title, e.desc, e.icon))
                                        .toList()),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 1200.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "My ",
                                    style: boldStyle.copyWith(fontSize: 40.0)),
                                TextSpan(
                                    text: "PROJECTS",
                                    style: boldStyle.copyWith(
                                        color: Colors.white, fontSize: 40.0)),
                              ])),
                              Container(
                                height: 1000.0,
                                color: context.pr,
                                child: Wrap(
                                    children: projects
                                        .map((e) => project(context, e.path,
                                            e.title, e.website, e.desc))
                                        .toList()),
                              )
                            ],
                          ),
                        )
                      ]))
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
                                        color: btns.first == e
                                            ? Colors.blue
                                            : context.pr,
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

  TextStyle stl = TextStyle(
    color: Colors.white,
  );

  Widget project(BuildContext context, String path, String title,
          String website, String desc) =>
      Container(
          width: context.w * 0.2,
          height: 650,
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/$path.jpg"),
                const SizedBox(height:10.0),
                Text(title, style: stl.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height:10.0),
                Text(website, style: stl),
                const SizedBox(height:10.0),
                Text(desc, style: stl),
              ]));

  Widget tech(BuildContext context, String title, String desc, IconData icon) =>
      Container(
        width: context.w * 0.3,
        child: ListTile(
          leading: Container(
              height: 60.0,
              width: 60.0,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Icon(icon, color: Colors.white)),
          title: Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30.0),
            child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18.0)),
          ),
          subtitle: Padding(
              padding: EdgeInsets.only(right: 30.0, top: 30.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: title,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal)),
                TextSpan(
                    text: desc.replaceFirst(title, ""),
                    style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ]))
              //  Text(desc,
              //     style: TextStyle(color: Colors.white, fontSize: 14.0)),
              ),
        ),
      );
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
