import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sample_translate/app/app/cubit/locale_cubit.dart';

import 'app/app/app.dart';

GetIt sl = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await initService(sl);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const App(),
    ),
  );
}

Future<void> initService(
  GetIt sl,
) async {
  cubit(sl);
}

cubit(GetIt sl) {
  sl.registerFactory(() => LocaleCubit());
}
