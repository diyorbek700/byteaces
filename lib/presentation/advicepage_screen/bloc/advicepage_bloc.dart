import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/advicepage_screen/models/advicepage_model.dart';
part 'advicepage_event.dart';
part 'advicepage_state.dart';

/// A bloc that manages the state of a Advicepage according to the event that is dispatched to it.
class AdvicepageBloc extends Bloc<AdvicepageEvent, AdvicepageState> {
  AdvicepageBloc(AdvicepageState initialState) : super(initialState) {
    on<AdvicepageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdvicepageInitialEvent event,
    Emitter<AdvicepageState> emit,
  ) async {}
}
