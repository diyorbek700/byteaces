import 'bloc/apputilpage_bloc.dart';
import 'models/apputilpage_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ApputilpageScreen extends StatelessWidget {
  const ApputilpageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ApputilpageBloc>(
        create: (context) => ApputilpageBloc(
            ApputilpageState(apputilpageModelObj: ApputilpageModel()))
          ..add(ApputilpageInitialEvent()),
        child: ApputilpageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ApputilpageBloc, ApputilpageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 20.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 281.h,
                            margin: EdgeInsets.only(left: 4.h, right: 69.h),
                            child: Text("msg4".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge!
                                    .copyWith(height: 1.25))),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl11".tr,
                                style: CustomTextStyles.titleSmallMedium_1)),
                        SizedBox(height: 5.v),
                        Container(
                          height: 89.v,
                          width: 79.h,
                          margin: EdgeInsets.only(left: 1.h),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(20.h),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl12".tr,
                                style: CustomTextStyles.titleSmallMedium_1)),
                        SizedBox(height: 5.v),
                        Container(
                          height: 89.v,
                          width: 79.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(20.h),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Container(
                            width: 317.h,
                            margin: EdgeInsets.only(left: 4.h, right: 33.h),
                            child: Text("msg5".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge!
                                    .copyWith(height: 1.25))),
                        SizedBox(height: 15.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  height: 89.v,
                                  width: 79.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray90001,
                                      borderRadius:
                                          BorderRadius.circular(20.h))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.h, top: 65.v),
                                  child: Text("lbl13".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium_1)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 60.v, bottom: 13.v),
                                  child: Text("lbl_22".tr,
                                      style: CustomTextStyles.labelMedium10)),
                              Container(
                                  height: 89.v,
                                  width: 79.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray90001,
                                      borderRadius:
                                          BorderRadius.circular(20.h))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.h, top: 65.v),
                                  child: Text("lbl14".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium_1))
                            ]),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl15".tr,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildStartButton(context)));
    });
  }

  /// Section Widget
  Widget _buildStartButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl2".tr,
        height: 38,
        margin: EdgeInsets.only(left: 58.h, right: 58.h, bottom: 51.v),
        onPressed: () {
          onTapStartButton(context);
        });
  }

  /// Navigates to the iphone1314FourContainerScreen when the action is triggered.
  onTapStartButton(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.homeFullPage,
    );
  }
}
