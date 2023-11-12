// ignore_for_file: must_be_immutable

part of 'mainpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Mainpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MainpageEvent extends Equatable {}

/// Event that is dispatched when the Mainpage widget is first created.
class MainpageInitialEvent extends MainpageEvent {
  @override
  List<Object?> get props => [];
}
