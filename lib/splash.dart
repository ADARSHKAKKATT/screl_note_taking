import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:screl_note_taking/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: 300,
        splashTransition: SplashTransition.sizeTransition,
        splash: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note_add,
                        color: Colors.green,
                        size: 70,
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.cyan,
                            child: Row(
                              children: [
                                Text(
                                  'Create',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,

                                      fontSize: 34,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'your notes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,

                                fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        nextScreen: Home());
  }
}
