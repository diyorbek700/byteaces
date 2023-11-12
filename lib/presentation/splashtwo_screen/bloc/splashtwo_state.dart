// ignore_for_file: must_be_immutable

part of 'splashtwo_bloc.dart';

/// Represents the state of Splashtwo in the application.
class SplashtwoState extends Equatable {
  SplashtwoState({this.splashtwoModelObj});

  SplashtwoModel? splashtwoModelObj;

  @override
  List<Object?> get props => [
        splashtwoModelObj,
      ];
  SplashtwoState copyWith({SplashtwoModel? splashtwoModelObj}) {
    return SplashtwoState(
      splashtwoModelObj: splashtwoModelObj ?? this.splashtwoModelObj,
    );
  }
}
