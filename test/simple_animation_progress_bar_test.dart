import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar_platform_interface.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimpleAnimationProgressBarPlatform
    with MockPlatformInterfaceMixin
    implements SimpleAnimationProgressBarPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SimpleAnimationProgressBarPlatform initialPlatform =
      SimpleAnimationProgressBarPlatform.instance;

  test('$MethodChannelSimpleAnimationProgressBar is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelSimpleAnimationProgressBar>());
  });

  test('getPlatformVersion', () async {
    SimpleAnimationProgressBar simpleAnimationProgressBarPlugin =
        SimpleAnimationProgressBar(
      height: 30,
      width: 300,
      backgroundColor: Colors.grey.shade800,
      foregrondColor: Colors.blue,
      ratio: 0.5,
      direction: Axis.horizontal,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(10),
    );
    MockSimpleAnimationProgressBarPlatform fakePlatform =
        MockSimpleAnimationProgressBarPlatform();
    SimpleAnimationProgressBarPlatform.instance = fakePlatform;

    expect(await simpleAnimationProgressBarPlugin.getPlatformVersion(), '42');
  });
}
