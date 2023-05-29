import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverPodLogger extends ProviderObserver {

  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    // TODO: implement didUpdateProvider
    super.didUpdateProvider(provider, previousValue, newValue, container);
    debugPrint("\x1B[32m------------provider name: $provider, previous value: $previousValue, new value: $newValue------------\x1B[0m");
  }
  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    super.didDisposeProvider(provider, container);
    debugPrint("\x1B[31m-----------provider name: $provider, disposed: $container------------\x1B[0m");
  }
}