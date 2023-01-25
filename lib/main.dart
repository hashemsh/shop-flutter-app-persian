import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/screens/home/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: kTextColor, fontFamily: 'IranSans'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: Homescreen(),
      ),
    );
  }
}

//pixle 6 Android 11 my Emulator 
