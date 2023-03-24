import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_translate/app/app/cubit/locale_cubit.dart';

import '../../main.dart';
import '../app_route.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale locale = context.locale;
    debugPrint(locale.toString());
    return BlocProvider(
        create: (_) => sl<LocaleCubit>(),
        child:
            BlocConsumer<LocaleCubit, LocaleState>(listener: (context, state) {
          if (state is ChangeLocalState) {
            locale = state.locale;
            debugPrint(locale.languageCode);
          }
        }, builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: locale,
            title: "Sample Translation",
            onGenerateRoute: AppRoute.onGenerateRoutes,
          );
        }));
  }
}
