import 'bloc/splashone_bloc.dart';
import 'models/splashone_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashoneScreen extends StatelessWidget {
  const SplashoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashoneBloc>(
        create: (context) =>
            SplashoneBloc(SplashoneState(splashoneModelObj: SplashoneModel()))
              ..add(SplashoneInitialEvent()),
        child: SplashoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashoneBloc, SplashoneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 42.v),
                  child: Column(children: [
                    SizedBox(
                        height: 486.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse331,
                              height: 280.v,
                              width: 134.h,
                              alignment: Alignment.bottomLeft),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse332,
                              height: 280.v,
                              width: 148.h,
                              alignment: Alignment.topRight),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 66.h, right: 58.h, bottom: 110.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgDetecter,
                                          height: 110.v,
                                          width: 258.h,
                                        ),
                                        SizedBox(height: 11.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl3".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl4".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl5".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl6".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl7".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl8".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Text("lbl9".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ])
                                      ]))),
                        ])),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 250.h,
                      child: Text(
                        "msg".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleLarge!.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 58.v),
                    SizedBox(
                        height: 10.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 4,
                            effect: ScrollingDotsEffect(
                                activeDotColor:
                                    theme.colorScheme.primary.withOpacity(0.59),
                                dotColor: appTheme.gray800,
                                dotHeight: 10.v,
                                dotWidth: 10.h))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildNextButton(context)));
    });
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl10".tr,
        margin: EdgeInsets.only(left: 58.h, right: 58.h, bottom: 51.v),
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates to the splashtwoScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashtwoScreen,
    );
  }
}
