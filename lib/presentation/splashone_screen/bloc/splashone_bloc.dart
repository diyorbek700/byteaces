import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/splashone_screen/models/splashone_model.dart';
part 'splashone_event.dart';
part 'splashone_state.dart';

/// A bloc that manages the state of a Splashone according to the event that is dispatched to it.
class SplashoneBloc extends Bloc<SplashoneEvent, SplashoneState> {
  SplashoneBloc(SplashoneState initialState) : super(initialState) {
    on<SplashoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashoneInitialEvent event,
    Emitter<SplashoneState> emit,
  ) async {}
}
