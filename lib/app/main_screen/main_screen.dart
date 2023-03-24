import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_translate/app/app_route.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: const Text("Change Language"),
        onTap: () {
          Navigator.pushNamed(context, AppRoute.changeLanguageScreen);
        },
      ),
      appBar: AppBar(title: const Text("Screen")),
    );
  }
}
