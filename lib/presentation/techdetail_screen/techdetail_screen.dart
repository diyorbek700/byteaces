import '../techdetail_screen/widgets/grid_item_widget.dart';
import 'bloc/techdetail_bloc.dart';
import 'models/grid_item_model.dart';
import 'models/techdetail_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/mainpage_page.dart';
import 'package:abdumalik_s_application3/widgets/custom_bottom_bar.dart';
import 'package:abdumalik_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class TechdetailScreen extends StatelessWidget {
  TechdetailScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TechdetailBloc>(
      create: (context) => TechdetailBloc(TechdetailState(
        techdetailModelObj: TechdetailModel(),
      ))
        ..add(TechdetailInitialEvent()),
      child: TechdetailScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl17".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 22.v),
              _buildWidgetRow(context),
              SizedBox(height: 27.v),
              _buildGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2275x123,
                height: 75.v,
                width: 123.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 89.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_bosch".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 119.h,
                margin: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocSelector<TechdetailBloc, TechdetailState, bool?>(
                      selector: (state) => state.isSelectedSwitch,
                      builder: (context, isSelectedSwitch) {
                        return CustomSwitch(
                          value: isSelectedSwitch,
                          onChange: (value) {
                            context
                                .read<TechdetailBloc>()
                                .add(ChangeSwitchEvent(value: value),);
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text(
                        "lbl_23".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 175.v,
          width: 145.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 175.v,
                  width: 145.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle225,
                        height: 75.v,
                        width: 123.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 66.h,
                          margin: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "msg_samsung".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge!.copyWith(
                              height: 1.15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        width: 118.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 22.v,
                              width: 46.h,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 20.v,
                                      width: 46.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100,
                                        borderRadius: BorderRadius.circular(
                                          11.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_42".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return BlocSelector<TechdetailBloc, TechdetailState, TechdetailModel?>(
      selector: (state) => state.techdetailModelObj,
      builder: (context, techdetailModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 176.v,
            crossAxisCount: 2,
            mainAxisSpacing: 28.h,
            crossAxisSpacing: 28.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: techdetailModelObj?.gridItemList.length ?? 0,
          itemBuilder: (context, index) {
            GridItemModel model =
                techdetailModelObj?.gridItemList[index] ?? GridItemModel();
            return GridItemWidget(
              model,
              changeSwitch: (value) {
                context
                    .read<TechdetailBloc>()
                    .add(GridItemEvent(index: index, isSelectedSwitch: value));
              },
            );
          },
        );
      },
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
