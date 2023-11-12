import 'package:abdumalik_s_application3/presentation/dashboard_page/dashboard_page.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/mainpage_page.dart';
import 'package:abdumalik_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeFullPage extends StatefulWidget {
  const HomeFullPage({super.key});

  @override
  State<HomeFullPage> createState() => _HomeFullPageState();
  static Widget builder(BuildContext context) {
    MainpagePage.builder(context);
    return HomeFullPage();
  }
}

class _HomeFullPageState extends State<HomeFullPage> {
  BottomBarEnum currentPage = BottomBarEnum.Userinterfacehomeprimary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPages(currentPage),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (v) {
          setState(() {
            currentPage = v;
          });
        },
      ),
    );
  }

  Widget _buildPages(BottomBarEnum current) {
    return switch (current) {
      BottomBarEnum.User => Container(),
      BottomBarEnum.Stopwatch35x35 => Container(color: Colors.green,),
      BottomBarEnum.Userinterfacehomeprimary => MainpagePage.builder(context),
      BottomBarEnum.Userinterfacestatistic => DashboardPage.builder(context),
    };
  }
}
