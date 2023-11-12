import 'package:abdumalik_s_application3/presentation/home_page/home_full_page.dart';
import 'package:abdumalik_s_application3/presentation/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:abdumalik_s_application3/presentation/timerpage_screen/timerpage_screen.dart';
import 'package:abdumalik_s_application3/presentation/splashone_screen/splashone_screen.dart';
import 'package:abdumalik_s_application3/presentation/splashtwo_screen/splashtwo_screen.dart';
import 'package:abdumalik_s_application3/presentation/splashthree_screen/splashthree_screen.dart';
import 'package:abdumalik_s_application3/presentation/apputilpage_screen/apputilpage_screen.dart';
import 'package:abdumalik_s_application3/presentation/iphone_13_14_four_container_screen/iphone_13_14_four_container_screen.dart';
import 'package:abdumalik_s_application3/presentation/techdetail_screen/techdetail_screen.dart';
import 'package:abdumalik_s_application3/presentation/advicepage_screen/advicepage_screen.dart';
import 'package:abdumalik_s_application3/presentation/timerspage_screen/timerspage_screen.dart';
import 'package:abdumalik_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String timerpageScreen = '/timerpage_screen';

  static const String splashoneScreen = '/splashone_screen';

  static const String splashtwoScreen = '/splashtwo_screen';

  static const String splashthreeScreen = '/splashthree_screen';

  static const String apputilpageScreen = '/apputilpage_screen';

  static const String mainpagePage = '/mainpage_page';

  static const String homePage = '/iphone_13_14_four_container_screen';

  static const String techdetailScreen = '/techdetail_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String advicepageScreen = '/advicepage_screen';

  static const String timerspageScreen = '/timerspage_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homeFullPage = '/home_full_page';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        timerpageScreen: TimerpageScreen.builder,
        splashoneScreen: SplashoneScreen.builder,
        splashtwoScreen: SplashtwoScreen.builder,
        splashthreeScreen: SplashthreeScreen.builder,
        apputilpageScreen: ApputilpageScreen.builder,
        homePage: HomePage.builder,
        techdetailScreen: TechdetailScreen.builder,
        advicepageScreen: AdvicepageScreen.builder,
        timerspageScreen: TimerspageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        // homeFullPage: HomeFullPage.builder,
        initialRoute: HomeFullPage.builder,
        // initialRoute: SplashPage.builder,
      };
}
