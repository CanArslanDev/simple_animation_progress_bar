import 'package:flutter/material.dart';
import 'dart:async';

import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SimpleAnimationProgressBarTestPage(),
    );
  }
}

class SimpleAnimationProgressBarTestPage extends StatefulWidget {
  const SimpleAnimationProgressBarTestPage({super.key});

  @override
  State<SimpleAnimationProgressBarTestPage> createState() =>
      _SimpleAnimationProgressBarTestPageState();
}

class _SimpleAnimationProgressBarTestPageState
    extends State<SimpleAnimationProgressBarTestPage> {
  double ratio = 0;
  void ratioVal() {
    if (ratio == 0) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          ratio = 0.2;
        });
        if (ratio == 0.2) {
          Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              ratio = 0.4;
            });
            if (ratio == 0.4) {
              Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                  ratio = 0.7;
                });
                if (ratio == 0.7) {
                  Future.delayed(const Duration(seconds: 1), () {
                    setState(() {
                      ratio = 1;
                    });
                    if (ratio == 1) {
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          ratio = 0;
                        });
                      });
                    }
                  });
                }
              });
            }
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ratioVal();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleAnimationProgressBar(
                      height: 30,
                      width: 300,
                      backgroundColor: Colors.grey.shade800,
                      foregrondColor: Colors.purple,
                      ratio: ratio,
                      direction: Axis.horizontal,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: const Duration(seconds: 3),
                      borderRadius: BorderRadius.circular(10),
                      gradientColor: const LinearGradient(
                          colors: [Colors.pink, Colors.purple]),
                      progressBarShadow: const [
                        BoxShadow(
                          color: Colors.pink,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      backgroundShadow: [
                        BoxShadow(
                          color: Colors.blue.withValues(alpha: 0.3),
                          blurRadius: 5,
                          spreadRadius: 0.4,
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleAnimationProgressBar(
                    height: 30,
                    width: 300,
                    backgroundColor: Colors.grey.shade800,
                    foregrondColor: Colors.blue,
                    ratio: ratio,
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 3),
                    borderRadius: BorderRadius.circular(10),
                    progressBarShadow: const [
                      BoxShadow(
                        color: Colors.pink,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleAnimationProgressBar(
                    height: 30,
                    width: 300,
                    backgroundColor: Colors.grey.shade800,
                    foregrondColor: Colors.blue,
                    ratio: ratio,
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 3),
                    borderRadius: BorderRadius.circular(10),
                    reverseAlignment: true,
                    progressBarShadow: const [
                      BoxShadow(
                        color: Colors.pink,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SimpleAnimationProgressBar(
              height: 130,
              width: 30,
              backgroundColor: Colors.grey.shade800,
              foregrondColor: Colors.purple,
              ratio: ratio,
              direction: Axis.vertical,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(seconds: 3),
              borderRadius: BorderRadius.circular(10),
              gradientColor: const LinearGradient(
                  colors: [Colors.pink, Colors.purple],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: SimpleAnimationProgressBar(
                height: 130,
                width: 30,
                backgroundColor: Colors.grey.shade800,
                foregrondColor: Colors.purple,
                ratio: ratio,
                direction: Axis.vertical,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
                gradientColor: const LinearGradient(
                    colors: [Colors.pink, Colors.purple],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
                reverseAlignment: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
