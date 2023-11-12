import '../mainpage_page/widgets/fiftynine_item_widget.dart';
import '../mainpage_page/widgets/slider_item_widget.dart';
import 'bloc/mainpage_bloc.dart';
import 'models/fiftynine_item_model.dart';
import 'models/mainpage_model.dart';
import 'models/slider_item_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/appbar_iconbutton.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abdumalik_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainpagePage extends StatelessWidget {
  const MainpagePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MainpageBloc>(
      create: (context) =>
          MainpageBloc(MainpageState(mainpageModelObj: MainpageModel()))
            ..add(MainpageInitialEvent()),
      child: MainpagePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child: Column(
                children: [
                  _buildSlider(context),
                  SizedBox(height: 20.v),
                  BlocBuilder<MainpageBloc, MainpageState>(
                      builder: (context, state) {
                    return SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: state.sliderIndex,
                            count:
                                state.mainpageModelObj?.sliderItemList.length ??
                                    0,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                activeDotColor:
                                    theme.colorScheme.primary.withOpacity(0.59),
                                dotColor: appTheme.gray800,
                                dotHeight: 8.v,
                                dotWidth: 8.h)));
                  }),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl11".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildRecentOrders(context),
                  SizedBox(height: 29.v),
                  _buildUserProfile(context),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl20".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  // _buildPlaylist(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_myenergy".tr, margin: EdgeInsets.only(left: 32.h)),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(24.h, 8.v, 24.h, 13.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
            child: AppbarIconbutton(
              imagePath: ImageConstant.imgGroup8,
              onTap: () {
                onTapIconButton(context);
              },
            ),
          )
        ]);
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return BlocBuilder<MainpageBloc, MainpageState>(builder: (context, state) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 170.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                state.sliderIndex = index;
              }),
          itemCount: state.mainpageModelObj?.sliderItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model =
                state.mainpageModelObj?.sliderItemList[index] ??
                    SliderItemModel();
            return SliderItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h, right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTen(
            context,
            userImage: ImageConstant.imgRectangle22,
            userName: "lbl16".tr,
          ),
          SizedBox(
            height: 163.v,
            width: 146.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 163.v,
                        width: 145.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.primary.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(25.h)))),
                _buildTen(context,
                    userImage: ImageConstant.imgRectangle22109x123,
                    userName: "lbl17".tr)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildTen(
              context,
              userImage: ImageConstant.imgRectangle221,
              userName: "lbl18".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildTen(
              context,
              userImage: ImageConstant.imgRectangle222,
              userName: "lbl19".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(right: 14.h),
            padding: EdgeInsets.symmetric(vertical: 11.v),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: SizedBox(
              height: 139.v,
              child: BlocSelector<MainpageBloc, MainpageState, MainpageModel?>(
                selector: (state) => state.mainpageModelObj,
                builder: (context, mainpageModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 10.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 30.h);
                      },
                      itemCount:
                          mainpageModelObj?.fiftynineItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        FiftynineItemModel model =
                            mainpageModelObj?.fiftynineItemList[index] ??
                                FiftynineItemModel();
                        return FiftynineItemWidget(model);
                      });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildTen(
              context,
              userImage: ImageConstant.imgRectangle224,
              userName: "lbl16".tr,
            ),
          )
        ]));
  }

  /// Common widget
  Widget _buildTen(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return GestureDetector(
      onTap: (){
        onTapSeventeen(context);
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                CustomImageView(
                    imagePath: userImage,
                    height: 109.v,
                    width: 123.h,
                    radius: BorderRadius.circular(15.h)),
                SizedBox(height: 8.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(userName,
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: appTheme.whiteA700)))
              ])),
    );
  }

  /// Navigates to the advicepageScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.advicepageScreen,
    );
  }

  /// Navigates to the techdetailScreen when the action is triggered.
  onTapSeventeen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.techdetailScreen,
    );
  }
}
