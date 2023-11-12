import 'bloc/splashthree_bloc.dart';
import 'models/splashthree_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashthreeScreen extends StatelessWidget {
  const SplashthreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashthreeBloc>(
        create: (context) => SplashthreeBloc(
            SplashthreeState(splashthreeModelObj: SplashthreeModel()))
          ..add(SplashthreeInitialEvent()),
        child: SplashthreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashthreeBloc, SplashthreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 18.v),
                  child: Column(children: [
                    SizedBox(
                        height: 486.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse335,
                              height: 280.v,
                              width: 141.h,
                              alignment: Alignment.bottomLeft),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse336,
                              height: 280.v,
                              width: 141.h,
                              alignment: Alignment.topRight),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 68.v),
                                  child: SizedBox(
                                      height: 220.adaptSize,
                                      width: 220.adaptSize,
                                      child: CircularProgressIndicator(
                                          value: 0.5,
                                          backgroundColor:
                                              theme.colorScheme.onPrimary))))
                        ])),
                    SizedBox(height: 28.v),
                    Container(
                        width: 347.h,
                        margin: EdgeInsets.only(left: 22.h, right: 21.h),
                        child: Text("msg3".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge!
                                .copyWith(height: 1.25))),
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

  /// Navigates to the apputilpageScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.apputilpageScreen,
    );
  }
}
