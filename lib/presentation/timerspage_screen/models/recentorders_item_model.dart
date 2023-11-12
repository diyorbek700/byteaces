import '../../../core/app_export.dart';

/// This class is used in the [recentorders_item_widget] screen.
class RecentordersItemModel {
  RecentordersItemModel({
    this.widget,
    this.widget1,
    this.id,
  }) {
    widget = widget ?? ImageConstant.imgRectangle36;
    widget1 = widget1 ?? "Телевизор";
    id = id ?? "";
  }

  String? widget;

  String? widget1;

  String? id;
}
