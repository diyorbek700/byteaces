import 'package:abdumalik_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgUserInterfaceHomePrimary,
      activeIcon: ImageConstant.imgUserInterfaceHomePrimary,
      type: BottomBarEnum.Userinterfacehomeprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserInterfaceStatistic,
      activeIcon: ImageConstant.imgUserInterfaceStatisticPrimary,
      type: BottomBarEnum.Userinterfacestatistic,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgStopwatch35x35,
      activeIcon: ImageConstant.imgStopwatch35x35,
      type: BottomBarEnum.Stopwatch35x35,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray90001,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(30.h),
          bottomLeft: Radius.circular(1.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              color: appTheme.whiteA700,
            ),
            activeIcon: SizedBox(
              height: 33.adaptSize,
              width: 33.adaptSize,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 33.adaptSize,
                width: 33.adaptSize,
                color: theme.colorScheme.primary.withOpacity(1),
                alignment: Alignment.center,
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Userinterfacehomeprimary,
  Userinterfacestatistic,
  Stopwatch35x35,
  User,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
