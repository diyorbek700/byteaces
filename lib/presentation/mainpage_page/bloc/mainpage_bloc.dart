import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
import '../models/fiftynine_item_model.dart';
import 'package:abdumalik_s_application3/presentation/mainpage_page/models/mainpage_model.dart';

part 'mainpage_event.dart';

part 'mainpage_state.dart';

/// A bloc that manages the state of a Mainpage according to the event that is dispatched to it.
class MainpageBloc extends Bloc<MainpageEvent, MainpageState> {
  MainpageBloc(MainpageState initialState) : super(initialState) {
    on<MainpageInitialEvent>(_onInitialize);
  }

  List<SliderItemModel> fillSliderItemList() {
    return List.generate(4, (index) => SliderItemModel());
  }

  List<FiftynineItemModel> fillFiftynineItemList() {
    return [
      FiftynineItemModel(
          widget: ImageConstant.imgRectangle223, widget1: "Спальня"),
      FiftynineItemModel(
          widget: ImageConstant.imgRectangle224, widget1: "Спальня")
    ];
  }

  _onInitialize(
    MainpageInitialEvent event,
    Emitter<MainpageState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(
      state.copyWith(
        mainpageModelObj: state.mainpageModelObj?.copyWith(
          sliderItemList: fillSliderItemList(),
          fiftynineItemList: fillFiftynineItemList(),
        ),
      ),
    );
  }
}
