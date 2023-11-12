import '../models/fiftynine_item_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftynineItemWidget extends StatelessWidget {
  FiftynineItemWidget(
    this.fiftynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftynineItemModel fiftynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      width: 146.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: fiftynineItemModelObj?.widget,
            height: 109.v,
            width: 123.h,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            fiftynineItemModelObj.widget1!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
