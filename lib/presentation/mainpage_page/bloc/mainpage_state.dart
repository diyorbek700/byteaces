// ignore_for_file: must_be_immutable

part of 'mainpage_bloc.dart';

/// Represents the state of Mainpage in the application.
class MainpageState extends Equatable {
  MainpageState({
    this.sliderIndex = 0,
    this.mainpageModelObj,
  });

  MainpageModel? mainpageModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        mainpageModelObj,
      ];
  MainpageState copyWith({
    int? sliderIndex,
    MainpageModel? mainpageModelObj,
  }) {
    return MainpageState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      mainpageModelObj: mainpageModelObj ?? this.mainpageModelObj,
    );
  }
}
