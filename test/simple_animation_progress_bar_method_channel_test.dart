import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar_method_channel.dart';

void main() {
  MethodChannelSimpleAnimationProgressBar platform =
      MethodChannelSimpleAnimationProgressBar();
  const MethodChannel channel = MethodChannel('simple_animation_progress_bar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
