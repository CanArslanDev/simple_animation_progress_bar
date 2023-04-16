import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_animation_progress_bar_method_channel.dart';

abstract class SimpleAnimationProgressBarPlatform extends PlatformInterface {
  /// Constructs a SimpleAnimationProgressBarPlatform.
  SimpleAnimationProgressBarPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleAnimationProgressBarPlatform _instance = MethodChannelSimpleAnimationProgressBar();

  /// The default instance of [SimpleAnimationProgressBarPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleAnimationProgressBar].
  static SimpleAnimationProgressBarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleAnimationProgressBarPlatform] when
  /// they register themselves.
  static set instance(SimpleAnimationProgressBarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
