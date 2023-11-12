// ignore_for_file: must_be_immutable

part of 'splashone_bloc.dart';

/// Represents the state of Splashone in the application.
class SplashoneState extends Equatable {
  SplashoneState({this.splashoneModelObj});

  SplashoneModel? splashoneModelObj;

  @override
  List<Object?> get props => [
        splashoneModelObj,
      ];
  SplashoneState copyWith({SplashoneModel? splashoneModelObj}) {
    return SplashoneState(
      splashoneModelObj: splashoneModelObj ?? this.splashoneModelObj,
    );
  }
}
