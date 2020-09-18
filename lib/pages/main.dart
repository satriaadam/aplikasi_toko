import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aplikasi_toko/pages/onboarding_screen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //         //
        //         // Try running your application with "flutter run". You'll see the
        //         // application has a blue toolbar. Then, without quitting the app, try
        //         // changing the primarySwatch below to Colors.green and then invoke
        //         // "hot reload" (press "r" in the console where you ran "flutter run",
        //         // or simply save your changes to "hot reload" in a Flutter IDE).
        //         // Notice that the counter didn't reset back to zero; the application
        //         // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: IntroPage(),
        centered: true,
        splashIconSize: 250,
        splashTransition: SplashTransition.fadeTransition,
        duration: 10,
        nextScreen: OnboardingScreen(),
      ),
    );
  }
}

class IntroPage extends StatefulWidget {
  IntroPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        body: Container(
          child: FlareActor('assets/animation/Loading.flr',
            animation: 'Alarm',
            shouldClip: false,
          ),
        ),
      );
    }
}
