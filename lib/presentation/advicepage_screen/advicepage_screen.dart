import 'bloc/advicepage_bloc.dart';
import 'models/advicepage_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/mainpage_page.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abdumalik_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class AdvicepageScreen extends StatelessWidget {
  AdvicepageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AdvicepageBloc>(
      create: (context) => AdvicepageBloc(AdvicepageState(
        advicepageModelObj: AdvicepageModel(),
      ))
        ..add(AdvicepageInitialEvent()),
      child: AdvicepageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AdvicepageBloc, AdvicepageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 8.v,
              ),
              child: Column(
                children: [
                  _buildTwentyNine(context),
                  SizedBox(height: 9.v),
                  _buildFortyEight(context),
                  SizedBox(height: 8.v),
                  _buildThirty(context),
                  SizedBox(height: 10.v),
                  _buildFortyNine(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: Container(
        height: 40.adaptSize,
        width: 40.adaptSize,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 9.v,
          bottom: 6.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.fromLTRB(2.h, 2.v, 3.h, 3.v),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray900,
                    borderRadius: BorderRadius.circular(
                      17.h,
                    ),
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUserInterfaceChevron,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl33".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 175.v,
            width: 145.h,
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle32,
              height: 175.v,
              width: 145.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 175.v,
            width: 145.h,
            decoration: AppDecoration.fillPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle33,
              height: 175.v,
              width: 145.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 114.h,
            child: Text(
              "msg11".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMedium.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Container(
            width: 148.h,
            margin: EdgeInsets.only(left: 60.h),
            child: Text(
              "msg12".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMedium.copyWith(
                height: 1.21,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 175.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 175.v,
                    width: 145.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(
                        25.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle32175x145,
                  height: 175.v,
                  width: 145.h,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle31,
            height: 175.v,
            width: 145.h,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 135.h,
            child: Text(
              "msg_52".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMedium.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Container(
            width: 148.h,
            margin: EdgeInsets.only(left: 36.h),
            child: Text(
              "msg13".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMedium.copyWith(
                height: 1.21,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
