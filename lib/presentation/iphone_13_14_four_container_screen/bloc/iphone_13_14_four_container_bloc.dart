import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdumalik_s_application3/presentation/iphone_13_14_four_container_screen/models/iphone_13_14_four_container_model.dart';
part 'iphone_13_14_four_container_event.dart';
part 'iphone_13_14_four_container_state.dart';

/// A bloc that manages the state of a Iphone1314FourContainer according to the event that is dispatched to it.
class Iphone1314FourContainerBloc
    extends Bloc<Iphone1314FourContainerEvent, Iphone1314FourContainerState> {
  Iphone1314FourContainerBloc(Iphone1314FourContainerState initialState)
      : super(initialState) {
    on<Iphone1314FourContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314FourContainerInitialEvent event,
    Emitter<Iphone1314FourContainerState> emit,
  ) async {}
}
