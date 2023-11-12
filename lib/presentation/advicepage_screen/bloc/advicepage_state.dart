// ignore_for_file: must_be_immutable

part of 'advicepage_bloc.dart';

/// Represents the state of Advicepage in the application.
class AdvicepageState extends Equatable {
  AdvicepageState({this.advicepageModelObj});

  AdvicepageModel? advicepageModelObj;

  @override
  List<Object?> get props => [
        advicepageModelObj,
      ];
  AdvicepageState copyWith({AdvicepageModel? advicepageModelObj}) {
    return AdvicepageState(
      advicepageModelObj: advicepageModelObj ?? this.advicepageModelObj,
    );
  }
}
