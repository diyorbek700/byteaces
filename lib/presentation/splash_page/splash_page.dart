import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_elevated_button.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();

  static Widget builder(BuildContext context) {
    return SplashPage();
  }
}

class _SplashPageState extends State<SplashPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(ImageConstant.shadow),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(ImageConstant.shadowleft),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: PageView(
                    controller: controller,
                    children: [
                      widget1(),
                      widget2(),
                      widget3(),
                    ],
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                CustomElevatedButton(
                  text: "lbl10".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  height: 50,
                  onPressed: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                    if(controller.page!.toInt()==2){
                      NavigatorService.pushNamed(
                        AppRoutes.apputilpageScreen,
                      );
                    }

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget widget1() {
    return Column(
      children: [
        SizedBox(height: 220),
        Image.asset(ImageConstant.stats),
        SizedBox(height: 100),
        Text(
          "msg".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge!.copyWith(
            height: 1.25,
          ),
        ),
      ],
    );
  }

  Widget widget2() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgWallpaperflare1Photoroom,
          height: 426.v,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
        ),
        SizedBox(height: 60),
        Text(
          "msg2".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge!.copyWith(height: 1.25),
        ),
      ],
    );
  }

  Widget widget3() {
    return Column(
      children: [
        SizedBox(height: 150),
        CustomImageView(
          imagePath: ImageConstant.timerImg,
          height: 220.v,
          width: 220.v,
          alignment: Alignment.topCenter,
        ),
        SizedBox(height: 90),
        Text(
          "msg2".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge!.copyWith(height: 1.25),
        ),
      ],
    );
  }
}
