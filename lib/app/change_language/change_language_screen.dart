import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_translate/app/app/cubit/locale_cubit.dart';

class ChangeLanguageScreen extends HookWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            onTap: () {
              context.read<LocaleCubit>().changeLanguage('en');
            },
            title: const Text("Change to English"),
          ),
          ListTile(
            onTap: () {
              context.read<LocaleCubit>().changeLanguage('zh');
            },
            title: const Text("Change to Chinese"),
          )
        ],
      ),
      appBar: AppBar(title: const Text("Change Language")),
    );
  }
}
