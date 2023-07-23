import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import '/app/core/constants/assets.dart';
import '/app/datasource/local/storage.dart';

enum LanguageType {
  china(Locale('zh'), '中國'),
  india(Locale('hi'), 'India'),
  france(Locale('fr'), 'French'),
  germany(Locale('de'), 'German'),
  japan(Locale('ja'), '日本語'),
  korea(Locale('ko'), '한국어'),
  spain(Locale('es'), 'Español'),
  vietnam(Locale('vi'), 'Tiếng việt'),
  english(Locale('en'), 'English'),
  portugal(Locale('pt'), "Portugal"),
  russia(Locale('ru'), "Russia"),
  saudiArabia(Locale('ar'), "Saudi Arabia"),
  thailand(Locale('th'), "Thailand");

  final Locale locale;
  final String nameLanguage;

  const LanguageType(this.locale, this.nameLanguage);
}

extension LanguageTypeExtension on LanguageType {
  get image {
    switch (this) {
      case LanguageType.china:
        return Assets.images.languages.chinaPNG;
      case LanguageType.india:
        return Assets.images.languages.indiaPNG;
      case LanguageType.france:
        return Assets.images.languages.francePNG;
      case LanguageType.germany:
        return Assets.images.languages.germanyPNG;
      case LanguageType.japan:
        return Assets.images.languages.japanPNG;
      case LanguageType.korea:
        return Assets.images.languages.koreaPNG;
      case LanguageType.spain:
        return Assets.images.languages.spainPNG;
      case LanguageType.vietnam:
        return Assets.images.languages.vietnamPNG;
      case LanguageType.english:
        return Assets.images.languages.englishPNG;
      case LanguageType.portugal:
        return Assets.images.languages.portugalPNG;
      case LanguageType.russia:
        return Assets.images.languages.russiaPNG;
      case LanguageType.saudiArabia:
        return Assets.images.languages.saudiArabiaPNG;
      case LanguageType.thailand:
        return Assets.images.languages.thailandPNG;
    }
  }
}

class L10n {
  static final all = LanguageType.values.map((e) => e.locale);

  static Locale? locale = Get.deviceLocale;

  // function change language
  static void changeLocale(Locale localeee) {
    Get.updateLocale(localeee);
    locale = localeee;

    setLocaleLocal(localeee.languageCode);
  }

  static Locale? getLocaleFromLanguage() {
    final langCode = getLocaleLocal();
    return langCode;

    // if (langCode == null) return Get.deviceLocale;

    // for (int i = 0; i < LanguageType.values.length; i++) {
    //   if (langCode == LanguageType.values[i].locale.languageCode) {
    //     return LanguageType.values[i].locale;
    //   }
    // }

    // return Get.deviceLocale;
  }
}

class S {
  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }
}
