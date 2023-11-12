// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [grid_item_widget] screen.
class GridItemModel extends Equatable {
  GridItemModel({
    this.hoffman,
    this.hoffman1,
    this.isSelectedSwitch,
    this.two,
    this.id,
  }) {
    hoffman = hoffman ?? ImageConstant.imgRectangle226;
    hoffman1 = hoffman1 ?? "Hoffman\nхолодильник";
    isSelectedSwitch = isSelectedSwitch ?? false;
    two = two ?? "2кВт/ч";
    id = id ?? "";
  }

  String? hoffman;

  String? hoffman1;

  bool? isSelectedSwitch;

  String? two;

  String? id;

  GridItemModel copyWith({
    String? hoffman,
    String? hoffman1,
    bool? isSelectedSwitch,
    String? two,
    String? id,
  }) {
    return GridItemModel(
      hoffman: hoffman ?? this.hoffman,
      hoffman1: hoffman1 ?? this.hoffman1,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      two: two ?? this.two,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [hoffman, hoffman1, isSelectedSwitch, two, id];
}
