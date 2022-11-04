import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:textscanner/controller/routes/routes.dart';
import 'package:textscanner/view/screens/homepage/home_page.dart';
import 'package:textscanner/view/screens/splash_screen/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOCREA',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: RoutesClass.splash,
      getPages: RoutesClass.routes,
    );
  }
}
