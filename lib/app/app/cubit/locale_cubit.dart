import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleLoading());

  void changeLanguage(String languageCode) {
    emit(ChangeLocalState(locale: Locale(languageCode)));
  }
}
