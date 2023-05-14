import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_meteo/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/weather-icon.json'),
        //Column(
         // children: [
          //  Image.asset('assets/nuages.png'),
           // const Text('WEATHER APP',
             // style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white,),)

         // ],
       // ),
        //backgroundColor: Colors.blueAccent,
        nextScreen: const Home(),
        splashIconSize: 250,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        animationDuration: const Duration(seconds: 1),
    );

  }
}




