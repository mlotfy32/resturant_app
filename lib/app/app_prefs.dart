import 'dart:math';

import 'package:resturantapp/presentation/resorces/language_Manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_LANG = 'PREFS_KEY_LANG';

class AppPrefrances {
  final SharedPreferences _sharedPreferences;
  AppPrefrances(this._sharedPreferences);
  Future<String> getAppLanguage() async {
    String? language = await _sharedPreferences.getString('PREFS_KEY_LANG');
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }
}
