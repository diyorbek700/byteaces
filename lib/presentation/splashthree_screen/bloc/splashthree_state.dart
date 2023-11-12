// ignore_for_file: must_be_immutable

part of 'splashthree_bloc.dart';

/// Represents the state of Splashthree in the application.
class SplashthreeState extends Equatable {
  SplashthreeState({this.splashthreeModelObj});

  SplashthreeModel? splashthreeModelObj;

  @override
  List<Object?> get props => [
        splashthreeModelObj,
      ];
  SplashthreeState copyWith({SplashthreeModel? splashthreeModelObj}) {
    return SplashthreeState(
      splashthreeModelObj: splashthreeModelObj ?? this.splashthreeModelObj,
    );
  }
}
