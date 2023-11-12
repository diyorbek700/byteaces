import '../models/grid_item_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:abdumalik_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(
    this.gridItemModelObj, {
    Key? key,
    this.changeSwitch,
  }) : super(
          key: key,
        );

  GridItemModel gridItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            imagePath: gridItemModelObj?.hoffman,
            height: 75.v,
            width: 123.h,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 85.h,
              margin: EdgeInsets.only(left: 2.h),
              child: Text(
                gridItemModelObj.hoffman1!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.15,
                ),
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSwitch(
                value: gridItemModelObj.isSelectedSwitch!,
                onChange: (value) {
                  changeSwitch?.call(value);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.h,
                  bottom: 3.v,
                ),
                child: Text(
                  gridItemModelObj.two!,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
