// ignore_for_file: must_be_immutable

part of 'apputilpage_bloc.dart';

/// Represents the state of Apputilpage in the application.
class ApputilpageState extends Equatable {
  ApputilpageState({this.apputilpageModelObj});

  ApputilpageModel? apputilpageModelObj;

  @override
  List<Object?> get props => [
        apputilpageModelObj,
      ];
  ApputilpageState copyWith({ApputilpageModel? apputilpageModelObj}) {
    return ApputilpageState(
      apputilpageModelObj: apputilpageModelObj ?? this.apputilpageModelObj,
    );
  }
}
