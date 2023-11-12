// ignore_for_file: must_be_immutable

part of 'apputilpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Apputilpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApputilpageEvent extends Equatable {}

/// Event that is dispatched when the Apputilpage widget is first created.
class ApputilpageInitialEvent extends ApputilpageEvent {
  @override
  List<Object?> get props => [];
}
