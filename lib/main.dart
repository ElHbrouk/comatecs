import 'package:comatecs/bindings.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/localization/change_local.dart';
import 'package:comatecs/core/localization/translation.dart';
import 'package:comatecs/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      
      initialBinding: MyBindings(),
      
      // useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      locale: controller.language,
      translations: MyTranslation(),
      // routes: AppRoutes.routes,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Comatecs',
      theme: controller.appTheme,
 
    );
  }
}
