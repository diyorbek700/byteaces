// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

/// Represents the state of Dashboard in the application.
class DashboardState extends Equatable {
  DashboardState({
    this.group34Controller,
    this.group38Controller,
    this.dashboardModelObj,
  });

  TextEditingController? group34Controller;

  TextEditingController? group38Controller;

  DashboardModel? dashboardModelObj;

  @override
  List<Object?> get props => [
        group34Controller,
        group38Controller,
        dashboardModelObj,
      ];
  DashboardState copyWith({
    TextEditingController? group34Controller,
    TextEditingController? group38Controller,
    DashboardModel? dashboardModelObj,
  }) {
    return DashboardState(
      group34Controller: group34Controller ?? this.group34Controller,
      group38Controller: group38Controller ?? this.group38Controller,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
    );
  }
}
