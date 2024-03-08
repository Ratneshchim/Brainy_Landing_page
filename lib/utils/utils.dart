import 'package:flutter/material.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

import 'package:folio/sections/features/feature1.dart';
import 'package:folio/sections/features/feature2.dart';
import 'package:folio/sections/features/feature3.dart';
import 'package:folio/sections/features/feature4.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String mypic = 'assets/photos/mypic.jpeg';
  static const String mypicbg = 'assets/photos/mypic-bg.png';
  static const String anime = 'assets/photos/brainyHomeAnime.json';
  static const String applelogo = 'assets/photos/512x512.png';
  static const String brainylogo = 'assets/photos/brainy_logo.png';
  static const String feature = 'assets/photos/4.png';


  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "",
    "",
    "",
    "https://www.linkedin.com/in/ratneshchimnani/",
    "https://github.com/Ratneshchim",
    ""
  ];

  static const String resume =
      'https://drive.google.com/file/d/1T6HsO6zJvJeL3eoARvov-m3wuYuNnj5k/view?usp=sharing';

  static const String gitHub = 'https://github.com/Ratneshchim';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // Services(),
    Portfolio(),
    Feature1(),  
    Feature2(),
    Feature3(),
    Feature4(),
    Contact(),
    Footer(),
    
  ];
}
