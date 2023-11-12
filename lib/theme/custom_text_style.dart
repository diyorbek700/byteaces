import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeRed400cc => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400Cc,
        fontSize: 12.fSize,
      );
  static get labelMedium10 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold_1 => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
