// ignore_for_file: must_be_immutable

part of 'techdetail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Techdetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TechdetailEvent extends Equatable {}

/// Event that is dispatched when the Techdetail widget is first created.
class TechdetailInitialEvent extends TechdetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends TechdetailEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

class GridItemEvent extends TechdetailEvent {
  GridItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
