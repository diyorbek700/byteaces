import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_icon_button.dart';
import 'package:abdumalik_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState(
        dashboardModelObj: DashboardModel(),
      ))
        ..add(DashboardInitialEvent()),
      child: DashboardPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 29.v),
          decoration: AppDecoration.fillOnPrimary,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 16.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 86.h),
                    child: Text(
                      "lbl21".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_2023".tr,
                    style: CustomTextStyles.titleSmall14,
                  ),
                  SizedBox(height: 25.v),
                  _buildNinetyFive(context),
                  SizedBox(height: 8.v),
                  _buildNinetySix(context),
                  SizedBox(height: 34.v),
                  _buildNinetyTwo(context),
                  SizedBox(height: 20.v),
                  _buildNinetyThree(context),
                  SizedBox(height: 15.v),
                  Text(
                    "msg_22".tr,
                    style: CustomTextStyles.labelLargeRed400cc,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 227.h,
                    child: Text(
                      "msg7".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLarge12.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildNinetyFour(context),
                  SizedBox(height: 15.v),
                  Text(
                    "lbl32".tr,
                    style: CustomTextStyles.labelLarge12,
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    width: 311.h,
                    margin: EdgeInsets.only(right: 37.h),
                    child: Text(
                      "msg8".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLarge12.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 327.h,
                    margin: EdgeInsets.only(right: 21.h),
                    child: Text(
                      "msg9".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLarge12.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 349.h,
                    child: Text(
                      "msg10".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLarge12.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 85.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 53.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray90001,
                  appTheme.blueGray90001.withOpacity(0.51),
                  appTheme.blueGray90001.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 71.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 67.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray90001,
                  appTheme.blueGray90001.withOpacity(0.51),
                  appTheme.blueGray90001.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 131.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 7.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray90001,
                  appTheme.blueGray90001.withOpacity(0.51),
                  appTheme.blueGray90001.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 139.v,
            width: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  theme.colorScheme.primary.withOpacity(1),
                  theme.colorScheme.primary.withOpacity(0.51),
                  theme.colorScheme.primary.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 106.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 32.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray90001,
                  appTheme.blueGray90001.withOpacity(0.51),
                  appTheme.blueGray90001.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 85.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 53.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray900,
                  appTheme.blueGray900.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            height: 106.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 32.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.blueGray90001,
                  appTheme.blueGray90001.withOpacity(0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        children: [
          Text(
            "lbl22".tr,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          Spacer(
            flex: 28,
          ),
          Text(
            "lbl23".tr,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Text(
              "lbl24".tr,
              style: CustomTextStyles.labelMediumSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Text(
              "lbl25".tr,
              style: CustomTextStyles.labelMediumSemiBold,
            ),
          ),
          Spacer(
            flex: 23,
          ),
          Text(
            "lbl26".tr,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          Spacer(
            flex: 23,
          ),
          Text(
            "lbl27".tr,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          Spacer(
            flex: 24,
          ),
          Text(
            "lbl28".tr,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return SizedBox(
      height: 61.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 61.v,
              width: 335.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray90001,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(9.h, 10.v, 14.h, 10.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 39.v,
                    width: 40.h,
                    padding: EdgeInsets.all(6.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCreditCard,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_562_000_c".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return SizedBox(
      height: 61.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 61.v,
              width: 335.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray90001,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 10.v, 16.h, 10.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 39.v,
                    width: 40.h,
                    padding: EdgeInsets.all(6.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "lbl_420".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return SizedBox(
      height: 122.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 122.v,
              width: 335.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray90001,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                right: 13.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_150".tr,
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "lbl_120".tr,
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "lbl_100".tr,
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 12.h,
                bottom: 6.v,
              ),
              child: Text(
                "lbl_200".tr,
                style: CustomTextStyles.labelMediumSemiBold_1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: BlocSelector<DashboardBloc, DashboardState,
                TextEditingController?>(
              selector: (state) => state.group34Controller,
              builder: (context, group34Controller) {
                return CustomTextFormField(
                  width: 335.h,
                  controller: group34Controller,
                  hintText: "lbl29".tr,
                  alignment: Alignment.topCenter,
                  contentPadding: EdgeInsets.symmetric(horizontal: 9.h),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 39.v),
            child: BlocSelector<DashboardBloc, DashboardState,
                TextEditingController?>(
              selector: (state) => state.group38Controller,
              builder: (context, group38Controller) {
                return CustomTextFormField(
                  width: 335.h,
                  controller: group38Controller,
                  hintText: "lbl30".tr,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.topCenter,
                  contentPadding: EdgeInsets.symmetric(horizontal: 9.h),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 37.v,
              ),
              child: Text(
                "lbl31".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 5.v,
              ),
              child: Text(
                "lbl".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 122.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
