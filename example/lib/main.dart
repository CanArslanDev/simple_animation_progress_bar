import 'package:flutter/material.dart';
import 'dart:async';

import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              padding: const EdgeInsets.only(left: 20),
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
