import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/splashthree_screen/models/splashthree_model.dart';
part 'splashthree_event.dart';
part 'splashthree_state.dart';

/// A bloc that manages the state of a Splashthree according to the event that is dispatched to it.
class SplashthreeBloc extends Bloc<SplashthreeEvent, SplashthreeState> {
  SplashthreeBloc(SplashthreeState initialState) : super(initialState) {
    on<SplashthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashthreeInitialEvent event,
    Emitter<SplashthreeState> emit,
  ) async {}
}
