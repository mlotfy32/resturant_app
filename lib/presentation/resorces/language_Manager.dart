enum LanguageType { ENGLISH, ARABIC }

String ENGLISH = 'en';
String ARABIC = 'ar';

extension LanguageTypeExtention on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.ARABIC:
        return ARABIC;
    }
  }
}
