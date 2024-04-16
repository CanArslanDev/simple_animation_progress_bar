# simple_animation_progress_bar

This Flutter widget pack aims to show a reactive style animation progress bar. It also supports both vertical and horizontal bar.

<img src="https://i.ibb.co/Q6TTsrz/ezgif-com-video-to-gif.gif" height="200"/>  

## Features

- Fixed ```Namespace not specified``` error.
- Linear progress bar
- Gradient Color
- Set ratio value
- Set border value
- Set border radius value
- Set background color
- Set foreground color
- Set animation type
- Set delay value
- Set direction
- Set reverse bar
- Set box shadow

## Getting started

You should ensure that you add the router as a dependency in your flutter project.
```yaml
dependencies:
 simple_animation_progress_bar: "^1.8.1"
```
y
You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## Example Project

There is a example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Usage

Need to include the import the package to the dart file where it will be used, use the below command,

```dart
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
```

Basic Widget usage with Linear Progress Bar
```dart
SimpleAnimationProgressBar(
    height: 30,
    width: 300,
    backgroundColor: Colors.grey.shade800,
    foregrondColor: Colors.purple,
    ratio: 0.5,
    direction: Axis.horizontal,
    curve: Curves.fastLinearToSlowEaseIn,
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.pink,
        offset: const Offset(
          5.0,
          5.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ),
      ],
)
```


Gradient Widget usage with Linear Progress Bar
```dart
SimpleAnimationProgressBar(
    height: 30,
    width: 300,
    backgroundColor: Colors.grey.shade800,
    foregrondColor: Colors.purple,
    ratio: 0.5,
    direction: Axis.horizontal,
    curve: Curves.fastLinearToSlowEaseIn,
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    gradientColor: const LinearGradient(
    colors: [Colors.pink, Colors.purple]),
    boxShadow: [
      BoxShadow(
        color: Colors.pink,
        offset: const Offset(
          5.0,
          5.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ),
      ],
)
```
