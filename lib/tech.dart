import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Techs {
  String title;
  String desc;
  IconData icon;
  Techs(this.title, this.desc, this.icon);
}

List<Techs> techs = [
  Techs(
      'Flutter',
      "Flutter SDK is Google's UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase",
      FontAwesomeIcons.mobile),
  Techs(
      "Django",
      "Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It's free and open source.",
      FontAwesomeIcons.laptop),
  Techs(
      "DevOps",
      "DevOps is a set of practices that combines software development and IT operations. It aims to shorten the systems development life cycle and provide continuous delivery with high software quality. DevOps is complementary with Agile software development; several DevOps aspects came from Agile methodology.",
      FontAwesomeIcons.code),
  Techs(
      "Firebase",
      "Firebase is a platform developed by Google for creating mobile and web applications. It was originally an independent company founded in 2011. In 2014, Google acquired the platform and it is now their flagship offering for app development.",
      FontAwesomeIcons.fire),
  Techs(
      "MySQL",
      """MySQL is an open-source relational database management system. Its name is a combination of "My", the name of co-founder Michael Widenius's daughter, and "SQL", the abbreviation for Structured Query Language.""",
      FontAwesomeIcons.database),
  Techs(
      "HTML5 & CSS3",
      """
HTML5 & CSS3 is HTML (the Hypertext Markup Language) and CSS (Cascading Style Sheets) are two of the core technologies for building Web pages. HTML provides the structure of the page, CSS the (visual and aural) layout, for a variety of devices.
""",
      FontAwesomeIcons.html5)
];
