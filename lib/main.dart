import 'package:flutter/material.dart';
import 'package:flutter_global_loader_overlay/src/global_loader.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    GlobalLoader.show();
    await Future.delayed(const Duration(seconds: 3));
    GlobalLoader.hide();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey, // ✅ OK
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), // ✅ REQUIRED
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> fakeApiCall() async {
    GlobalLoader.show();

    await Future.delayed(const Duration(seconds: 3));

    GlobalLoader.hide();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: const Text('Show Loader')));
  }
}
