import 'package:comatecs/core/utils/app_theme.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      // locale: controller.language,
      // translations: MyTranslation(),
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Comatecs',
      theme: arabicTheme,
    );
  }
}
