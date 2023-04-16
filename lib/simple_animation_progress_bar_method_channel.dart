import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_animation_progress_bar_platform_interface.dart';

/// An implementation of [SimpleAnimationProgressBarPlatform] that uses method channels.
class MethodChannelSimpleAnimationProgressBar extends SimpleAnimationProgressBarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_animation_progress_bar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
