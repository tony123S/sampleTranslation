


part of 'locale_cubit.dart';


abstract class LocaleState {}

class LocaleLoading extends LocaleState {}


class ChangeLocalState extends LocaleState {
  final Locale locale;
  ChangeLocalState({required this.locale});
}
