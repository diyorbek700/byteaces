// ignore_for_file: must_be_immutable

part of 'advicepage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Advicepage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdvicepageEvent extends Equatable {}

/// Event that is dispatched when the Advicepage widget is first created.
class AdvicepageInitialEvent extends AdvicepageEvent {
  @override
  List<Object?> get props => [];
}
