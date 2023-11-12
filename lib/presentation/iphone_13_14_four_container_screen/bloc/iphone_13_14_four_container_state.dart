// ignore_for_file: must_be_immutable

part of 'iphone_13_14_four_container_bloc.dart';

/// Represents the state of Iphone1314FourContainer in the application.
class Iphone1314FourContainerState extends Equatable {
  Iphone1314FourContainerState({this.iphone1314FourContainerModelObj});

  Iphone1314FourContainerModel? iphone1314FourContainerModelObj;

  @override
  List<Object?> get props => [
        iphone1314FourContainerModelObj,
      ];
  Iphone1314FourContainerState copyWith(
      {Iphone1314FourContainerModel? iphone1314FourContainerModelObj}) {
    return Iphone1314FourContainerState(
      iphone1314FourContainerModelObj: iphone1314FourContainerModelObj ??
          this.iphone1314FourContainerModelObj,
    );
  }
}
