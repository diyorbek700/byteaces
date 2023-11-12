import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 34.adaptSize,
          width: 34.adaptSize,
          decoration: IconButtonStyleHelper.fillBlueGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup8,
          ),
        ),
      ),
    );
  }
}
