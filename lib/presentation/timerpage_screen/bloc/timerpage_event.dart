// ignore_for_file: must_be_immutable

part of 'timerpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Timerpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TimerpageEvent extends Equatable {}

/// Event that is dispatched when the Timerpage widget is first created.
class TimerpageInitialEvent extends TimerpageEvent {
  @override
  List<Object?> get props => [];
}
