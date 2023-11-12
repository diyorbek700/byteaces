import '../../../core/app_export.dart';

/// This class is used in the [fiftynine_item_widget] screen.
class FiftynineItemModel {
  FiftynineItemModel({
    this.widget,
    this.widget1,
    this.id,
  }) {
    widget = widget ?? ImageConstant.imgRectangle223;
    widget1 = widget1 ?? "Спальня";
    id = id ?? "";
  }

  String? widget;

  String? widget1;

  String? id;
}
