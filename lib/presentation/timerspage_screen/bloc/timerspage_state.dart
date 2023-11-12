// ignore_for_file: must_be_immutable

part of 'timerspage_bloc.dart';

/// Represents the state of Timerspage in the application.
class TimerspageState extends Equatable {
  TimerspageState({this.timerspageModelObj});

  TimerspageModel? timerspageModelObj;

  @override
  List<Object?> get props => [
        timerspageModelObj,
      ];
  TimerspageState copyWith({TimerspageModel? timerspageModelObj}) {
    return TimerspageState(
      timerspageModelObj: timerspageModelObj ?? this.timerspageModelObj,
    );
  }
}
