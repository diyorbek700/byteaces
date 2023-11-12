// ignore_for_file: must_be_immutable

part of 'splashtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splashtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashtwoEvent extends Equatable {}

/// Event that is dispatched when the Splashtwo widget is first created.
class SplashtwoInitialEvent extends SplashtwoEvent {
  @override
  List<Object?> get props => [];
}
