import 'bloc/splashtwo_bloc.dart';
import 'models/splashtwo_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashtwoScreen extends StatelessWidget {
  const SplashtwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashtwoBloc>(
        create: (context) =>
            SplashtwoBloc(SplashtwoState(splashtwoModelObj: SplashtwoModel()))
              ..add(SplashtwoInitialEvent()),
        child: SplashtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashtwoBloc, SplashtwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: Column(children: [
                    SizedBox(
                        height: 495.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse333,
                              height: 280.v,
                              width: 141.h,
                              alignment: Alignment.bottomLeft),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse334,
                              height: 280.v,
                              width: 141.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 9.v)),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgWallpaperflare1Photoroom,
                            height: 426.v,
                            width: 390.h,
                            alignment: Alignment.topCenter,
                          ),
                        ])),
                    SizedBox(height: 27.v),
                    Container(
                      width: 277.h,
                      margin: EdgeInsets.only(left: 57.h, right: 56.h),
                      child: Text(
                        "msg2".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            theme.textTheme.titleLarge!.copyWith(height: 1.25),
                      ),
                    ),
                    SizedBox(height: 57.v),
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

  /// Navigates to the splashthreeScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashthreeScreen,
    );
  }
}
