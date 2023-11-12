// ignore_for_file: must_be_immutable

part of 'timerpage_bloc.dart';

/// Represents the state of Timerpage in the application.
class TimerpageState extends Equatable {
  TimerpageState({this.timerpageModelObj});

  TimerpageModel? timerpageModelObj;

  @override
  List<Object?> get props => [
        timerpageModelObj,
      ];
  TimerpageState copyWith({TimerpageModel? timerpageModelObj}) {
    return TimerpageState(
      timerpageModelObj: timerpageModelObj ?? this.timerpageModelObj,
    );
  }
}
