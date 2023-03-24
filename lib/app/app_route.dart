import 'package:flutter/material.dart';
import 'package:sample_translate/app/main_screen/main_screen.dart';

import 'change_language/change_language_screen.dart';

class AppRoute {
  static const mainScreen = '/mainScreen';
  static const changeLanguageScreen = '/changeLanguageScreen';

  static MaterialPageRoute<dynamic> _mainScreenRoute() {
    return MaterialPageRoute(builder: (context) {
      return const MainScreen();
    });
  }

  static MaterialPageRoute<dynamic> _changeLanguageScreenRoute() {
    return MaterialPageRoute(builder: (context) {
      return const ChangeLanguageScreen();
    });
  }

  static Route? onGenerateRoutes(RouteSettings settings) {
    if (settings.name == mainScreen) {
      return _mainScreenRoute();
    }

    if (settings.name == changeLanguageScreen) {
      return _changeLanguageScreenRoute();
    }

    return _mainScreenRoute();
  }
}
