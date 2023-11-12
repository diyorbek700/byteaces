import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/grid_item_model.dart';
import 'package:abdumalik_s_application3/presentation/techdetail_screen/models/techdetail_model.dart';
part 'techdetail_event.dart';
part 'techdetail_state.dart';

/// A bloc that manages the state of a Techdetail according to the event that is dispatched to it.
class TechdetailBloc extends Bloc<TechdetailEvent, TechdetailState> {
  TechdetailBloc(TechdetailState initialState) : super(initialState) {
    on<TechdetailInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<GridItemEvent>(_gridItem);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<TechdetailState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _gridItem(
    GridItemEvent event,
    Emitter<TechdetailState> emit,
  ) {
    List<GridItemModel> newList =
        List<GridItemModel>.from(state.techdetailModelObj!.gridItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelectedSwitch: event.isSelectedSwitch,
    );
    emit(state.copyWith(
        techdetailModelObj:
            state.techdetailModelObj?.copyWith(gridItemList: newList)));
  }

  List<GridItemModel> fillGridItemList() {
    return [
      GridItemModel(
          hoffman: ImageConstant.imgRectangle226,
          hoffman1: "Hoffman\nхолодильник",
          two: "2кВт/ч"),
      GridItemModel(
          hoffman: ImageConstant.imgRectangle227,
          hoffman1: "LG \r\nмикроволновка",
          two: "1кВт/ч"),
      GridItemModel(
          hoffman: ImageConstant.imgRectangle228,
          hoffman1: "Электрический\nчайник",
          two: "1кВт/ч"),
      GridItemModel(
          hoffman: ImageConstant.imgRectangle229,
          hoffman1: "Bosch\nводонагреватель",
          two: "2кВт/ч")
    ];
  }

  _onInitialize(
    TechdetailInitialEvent event,
    Emitter<TechdetailState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        techdetailModelObj: state.techdetailModelObj?.copyWith(
      gridItemList: fillGridItemList(),
    )));
  }
}
