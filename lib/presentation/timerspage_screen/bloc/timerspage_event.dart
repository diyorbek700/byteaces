// ignore_for_file: must_be_immutable

part of 'timerspage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Timerspage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TimerspageEvent extends Equatable {}

/// Event that is dispatched when the Timerspage widget is first created.
class TimerspageInitialEvent extends TimerspageEvent {
  @override
  List<Object?> get props => [];
}
