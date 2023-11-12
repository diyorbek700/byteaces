import '../timerspage_screen/widgets/recentorders_item_widget.dart';
import 'bloc/timerspage_bloc.dart';
import 'models/recentorders_item_model.dart';
import 'models/timerspage_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/mainpage_page.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abdumalik_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TimerspageScreen extends StatelessWidget {
  TimerspageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TimerspageBloc>(
        create: (context) => TimerspageBloc(
            TimerspageState(timerspageModelObj: TimerspageModel()))
          ..add(TimerspageInitialEvent()),
        child: TimerspageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  _buildRecentOrders(context),
                  Spacer()
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true, title: AppbarTitle(text: "lbl34".tr));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: BlocSelector<TimerspageBloc, TimerspageState, TimerspageModel?>(
            selector: (state) => state.timerspageModelObj,
            builder: (context, timerspageModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 21.v);
                  },
                  itemCount:
                      timerspageModelObj?.recentordersItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    RecentordersItemModel model =
                        timerspageModelObj?.recentordersItemList[index] ??
                            RecentordersItemModel();
                    return RecentordersItemWidget(model, onTapImgWidget: () {
                      onTapImgWidget(context);
                    }, onTapTxtWidget1: () {
                      onTapTxtWidget1(context);
                    });
                  });
            }));
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

  /// Navigates to the timerpageScreen when the action is triggered.
  onTapImgWidget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.timerpageScreen,
    );
  }

  /// Navigates to the timerpageScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.timerpageScreen,
    );
  }
}
