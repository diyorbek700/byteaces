import '../models/recentorders_item_model.dart';
import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  RecentordersItemWidget(
    this.recentordersItemModelObj, {
    Key? key,
    this.onTapImgWidget,
    this.onTapTxtWidget1,
  }) : super(
          key: key,
        );

  RecentordersItemModel recentordersItemModelObj;

  VoidCallback? onTapImgWidget;

  VoidCallback? onTapTxtWidget1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 61.v,
              width: 335.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray90001,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: recentordersItemModelObj?.widget,
                    height: 39.v,
                    width: 40.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    onTap: () {
                      onTapImgWidget!.call();
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapTxtWidget1!.call();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 11.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        recentordersItemModelObj.widget1!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
