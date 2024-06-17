import 'package:comatecs/bindings/initial_binding.dart';
import 'package:comatecs/core/localization/change_local.dart';
import 'package:comatecs/core/localization/translation.dart';
import 'package:comatecs/core/services/services.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/home_layout/home_layout.dart';
import 'package:comatecs/features/language/presentation/views/language_view.dart';
import 'package:comatecs/test.dart';
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
    const VideoApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      // useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      // locale: controller.language,
      translations: MyTranslation(),
      // getPages: AppRoutes.routes,
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomeLayout(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Comatecs',
      theme: controller.appTheme,
    );
  }
}
