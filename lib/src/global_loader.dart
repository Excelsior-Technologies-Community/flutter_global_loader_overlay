import 'package:flutter/material.dart';

class GlobalLoader {
  static OverlayEntry? _entry;
  static GlobalKey<NavigatorState>? _navigatorKey;

  /// MUST be called once (usually in main.dart)
  static void init(GlobalKey<NavigatorState> navigatorKey) {
    _navigatorKey = navigatorKey;
  }

  static void show({Widget? loader}) {
    if (_entry != null) return;
    if (_navigatorKey == null) {
      throw FlutterError(
        'GlobalLoader.init(navigatorKey) must be called before show()',
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final navigator = _navigatorKey!.currentState;
      if (navigator == null) return;

      final overlay = navigator.overlay;
      if (overlay == null) return;

      _entry = OverlayEntry(
        builder: (_) => Stack(
          children: [
            const ModalBarrier(dismissible: false, color: Colors.black38),
            Center(
              child:
                  loader ??
                  const CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      );

      overlay.insert(_entry!);
    });
  }

  static void hide() {
    _entry?.remove();
    _entry = null;
  }
}
