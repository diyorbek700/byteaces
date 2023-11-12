import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "TimerPage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.timerpageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SplashOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SplashTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SplashThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "AppUtilPage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.apputilpageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 13 & 14 - Four - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePage),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TechDetail".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.techdetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "AdvicePage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.advicepageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TimersPage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.timerspageScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
