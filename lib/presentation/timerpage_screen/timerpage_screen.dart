import 'bloc/timerpage_bloc.dart';
import 'models/timerpage_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/mainpage_page.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abdumalik_s_application3/widgets/custom_bottom_bar.dart';
import 'package:abdumalik_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TimerpageScreen extends StatelessWidget {
  TimerpageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TimerpageBloc>(
        create: (context) =>
            TimerpageBloc(TimerpageState(timerpageModelObj: TimerpageModel()))
              ..add(TimerpageInitialEvent()),
        child: TimerpageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TimerpageBloc, TimerpageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 53.h, vertical: 82.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(flex: 32),
                        Text("lbl_01_00_00".tr,
                            style: theme.textTheme.displayMedium),
                        Spacer(flex: 67),
                        CustomElevatedButton(
                            text: "lbl2".tr, margin: EdgeInsets.only(left: 9.h))
                      ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(left: 21.h, top: 6.v, bottom: 9.v),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(2.h, 2.v, 3.h, 3.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder17),
                      child: Container(
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          decoration: BoxDecoration(
                              color: appTheme.blueGray900,
                              borderRadius: BorderRadius.circular(17.h))))),
              CustomImageView(
                  imagePath: ImageConstant.imgUserInterfaceChevron,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  alignment: Alignment.center)
            ])),
        centerTitle: true,
        title: AppbarTitle(text: "lbl".tr));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userinterfacehomeprimary:
        return AppRoutes.mainpagePage;
      case BottomBarEnum.Userinterfacestatistic:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Stopwatch35x35:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.mainpagePage:
        return MainpagePage.builder(context);
      case AppRoutes.dashboardPage:
        return DashboardPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
