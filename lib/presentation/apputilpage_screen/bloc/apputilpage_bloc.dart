import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/apputilpage_screen/models/apputilpage_model.dart';
part 'apputilpage_event.dart';
part 'apputilpage_state.dart';

/// A bloc that manages the state of a Apputilpage according to the event that is dispatched to it.
class ApputilpageBloc extends Bloc<ApputilpageEvent, ApputilpageState> {
  ApputilpageBloc(ApputilpageState initialState) : super(initialState) {
    on<ApputilpageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApputilpageInitialEvent event,
    Emitter<ApputilpageState> emit,
  ) async {}
}
