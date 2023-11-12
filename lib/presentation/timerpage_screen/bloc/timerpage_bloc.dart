import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/timerpage_screen/models/timerpage_model.dart';
part 'timerpage_event.dart';
part 'timerpage_state.dart';

/// A bloc that manages the state of a Timerpage according to the event that is dispatched to it.
class TimerpageBloc extends Bloc<TimerpageEvent, TimerpageState> {
  TimerpageBloc(TimerpageState initialState) : super(initialState) {
    on<TimerpageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TimerpageInitialEvent event,
    Emitter<TimerpageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashoneScreen,
      );
    });
  }
}
