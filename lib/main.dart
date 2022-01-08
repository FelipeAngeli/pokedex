import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/core/colors/colors.dart';
import 'app/core/screen/animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set defaults to system colors
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //statusBar
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      //navigationBar color
      systemNavigationBarColor: AppColors.background,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    //Orientations configs of app
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimationPage(),
    );
  }
}
