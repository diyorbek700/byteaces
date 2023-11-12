// ignore_for_file: must_be_immutable

part of 'splashone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splashone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashoneEvent extends Equatable {}

/// Event that is dispatched when the Splashone widget is first created.
class SplashoneInitialEvent extends SplashoneEvent {
  @override
  List<Object?> get props => [];
}
