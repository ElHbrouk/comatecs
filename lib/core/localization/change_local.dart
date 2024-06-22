// import 'package:comatecs/core/utils/app_theme.dart';
// import 'package:comatecs/core/utils/routes.dart';
// import 'package:comatecs/core/services/services.dart';
// import 'package:flutter/material.dart';


// class LocalController extends GetxController {
//   Locale? language;
//   String? sharedPrefLang;
//   ThemeData appTheme = englishTheme;
//   MyServices myServices = Get.find();
//   changeLang({required String languageCode}) {
//     Locale locale = Locale(languageCode);
//     myServices.sharedPreferences.setString("lang", languageCode);
//     appTheme = languageCode == "ar" ? arabicTheme : englishTheme;
//     Get.changeTheme(appTheme);
//     Get.updateLocale(locale);
//     Get.toNamed(AppRoutes.onBoardingView);
//   }

//   @override
//   void onInit() {
//     sharedPrefLang = myServices.sharedPreferences.getString("lang");
//     if (sharedPrefLang == "ar") {
//       language = const Locale("ar");
//       appTheme = arabicTheme;
//     } else if (sharedPrefLang == "en") {
//       language = const Locale("en");
//       appTheme = englishTheme;
//     } else {
//       language = Locale(Get.deviceLocale!.languageCode);
//       appTheme = englishTheme;
//     }
//     super.onInit();
//   }
// }
