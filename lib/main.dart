import 'package:ecommercapp/core/services/services.dart';
import 'package:ecommercapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding/initialbinding.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.apptheme, 
      initialBinding:InitialBindings() ,
      // routes: routes,
      getPages: routes,
    );
  }
}
