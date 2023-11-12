import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/splashtwo_screen/models/splashtwo_model.dart';
part 'splashtwo_event.dart';
part 'splashtwo_state.dart';

/// A bloc that manages the state of a Splashtwo according to the event that is dispatched to it.
class SplashtwoBloc extends Bloc<SplashtwoEvent, SplashtwoState> {
  SplashtwoBloc(SplashtwoState initialState) : super(initialState) {
    on<SplashtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashtwoInitialEvent event,
    Emitter<SplashtwoState> emit,
  ) async {}
}
