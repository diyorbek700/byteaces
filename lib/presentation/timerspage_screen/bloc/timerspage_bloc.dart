import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recentorders_item_model.dart';
import 'package:abdumalik_s_application3/presentation/timerspage_screen/models/timerspage_model.dart';
part 'timerspage_event.dart';
part 'timerspage_state.dart';

/// A bloc that manages the state of a Timerspage according to the event that is dispatched to it.
class TimerspageBloc extends Bloc<TimerspageEvent, TimerspageState> {
  TimerspageBloc(TimerspageState initialState) : super(initialState) {
    on<TimerspageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TimerspageInitialEvent event,
    Emitter<TimerspageState> emit,
  ) async {
    emit(state.copyWith(
        timerspageModelObj: state.timerspageModelObj
            ?.copyWith(recentordersItemList: fillRecentordersItemList())));
  }

  List<RecentordersItemModel> fillRecentordersItemList() {
    return [
      RecentordersItemModel(
          widget: ImageConstant.imgRectangle36, widget1: "Телевизор"),
      RecentordersItemModel(
          widget: ImageConstant.imgRectangle37, widget1: "Кондиционер"),
      RecentordersItemModel(
          widget: ImageConstant.imgRectangle38, widget1: "Обогреватель"),
      RecentordersItemModel(
          widget: ImageConstant.imgRectangle39, widget1: "Духовка"),
      RecentordersItemModel(
          widget: ImageConstant.imgRectangle40, widget1: "Лампа")
    ];
  }
}
