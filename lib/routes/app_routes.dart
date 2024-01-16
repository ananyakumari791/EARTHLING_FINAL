import 'package:flutter/material.dart';
import 'package:asmi_s_application1/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:asmi_s_application1/presentation/iphone_13_14_two_screen/iphone_13_14_two_screen.dart';
import 'package:asmi_s_application1/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:asmi_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1314TwoScreen = '/iphone_13_14_two_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone1314OneScreen: Iphone1314OneScreen.builder,
        iphone1314TwoScreen: Iphone1314TwoScreen.builder,
        iphone1314ThreeScreen: Iphone1314ThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone1314OneScreen.builder
      };
}
