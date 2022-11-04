import 'package:get/get.dart';
import 'package:textscanner/view/screens/homepage/home_page.dart';
import 'package:textscanner/view/screens/splash_screen/splash.dart';

class RoutesClass {
  static String splash = "/";
  static String home = "/";

  static String getNavRoute() => home;
  static String getSplashRoutes() => splash;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: home, page: () => MyHomePage()),
  ];
}
