// ignore_for_file: must_be_immutable

part of 'techdetail_bloc.dart';

/// Represents the state of Techdetail in the application.
class TechdetailState extends Equatable {
  TechdetailState({
    this.isSelectedSwitch = false,
    this.techdetailModelObj,
  });

  TechdetailModel? techdetailModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        techdetailModelObj,
      ];
  TechdetailState copyWith({
    bool? isSelectedSwitch,
    TechdetailModel? techdetailModelObj,
  }) {
    return TechdetailState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      techdetailModelObj: techdetailModelObj ?? this.techdetailModelObj,
    );
  }
}
