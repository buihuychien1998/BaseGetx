import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/app/core/base/base_project.dart';
import '/app/datasource/local/storage.dart';
import '/app/l10n/l10n.dart';
import '/firebase_options_prod.dart';
import 'app/core/config/theme_config.dart';
import 'app/core/constants/app_constant.dart';
import 'app/core/services/notification_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init box storage
  await GetStorage.init();

  //with Flutter Fire
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //if is Mobile
  if (GetPlatform.isMobile) {
    FirebaseMessaging.onBackgroundMessage(NotificationService.firebaseMessagingBackgroundHandler);
  }

  SharedPreferences.getInstance().then((value) => Global.sharedPreferences = value);
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeConfig = ThemeConfig();
    return GetMaterialApp(
      title: "Application Dev",
      // tắt cái banner ở appBar
      debugShowCheckedModeBanner: false,
      // luôn show cái log của GetX
      enableLog: true,
      //routing
      initialRoute: Routes.AUTHENTICATION,
      getPages: AppPages.routes,
      initialBinding: BindingsBuilder(() {
        Get.put(BaseConnect());
        Get.put(NotificationService()).notificationServiceInitialize();
      }),
      //theme
      theme: themeConfig.lightTheme,
      darkTheme: themeConfig.dartTheme,
      themeMode: ThemeMode.light,
      //language
      locale: getLocaleLocal(),
      //ngon ngu he thong'
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
    );
  }
}
