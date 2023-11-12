// ignore_for_file: must_be_immutable

part of 'iphone_13_14_four_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314FourContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314FourContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314FourContainer widget is first created.
class Iphone1314FourContainerInitialEvent extends Iphone1314FourContainerEvent {
  @override
  List<Object?> get props => [];
}
