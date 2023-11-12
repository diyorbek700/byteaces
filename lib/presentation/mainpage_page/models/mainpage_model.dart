// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'fiftynine_item_model.dart';

/// This class defines the variables used in the [mainpage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MainpageModel extends Equatable {
  MainpageModel({
    this.sliderItemList = const [],
    this.fiftynineItemList = const [],
  }) {}

  List<SliderItemModel> sliderItemList;

  List<FiftynineItemModel> fiftynineItemList;

  MainpageModel copyWith({
    List<SliderItemModel>? sliderItemList,
    List<FiftynineItemModel>? fiftynineItemList,
  }) {
    return MainpageModel(
      sliderItemList: sliderItemList ?? this.sliderItemList,
      fiftynineItemList: fiftynineItemList ?? this.fiftynineItemList,
    );
  }

  @override
  List<Object?> get props => [sliderItemList, fiftynineItemList];
}
