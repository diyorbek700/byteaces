import '../models/slider_item_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle13,
      height: 170.v,
      width: 337.h,
      radius: BorderRadius.circular(
        30.h,
      ),
    );
  }
}
