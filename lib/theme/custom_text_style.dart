import 'package:flutter/material.dart';
import 'package:Dawir/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18,
      );
  static get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 18,
      );
  static get bodyLargeGray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50.withOpacity(0.7),
      );
  static get bodyLargeGray5018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50,
        fontSize: 18,
      );
  static get bodyLargeGray60001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 18,
      );
  static get bodyLargeGray60001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeGray80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80002,
        fontSize: 18,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13,
      );
  static get bodyMediumGilroyMediumBlack900 =>
      theme.textTheme.bodyMedium!.gilroyMedium.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGilroyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.gilroyMedium.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumHKGroteskBluegray800 =>
      theme.textTheme.bodyMedium!.hKGrotesk.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMediumff030303 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF030303),
      );
  static get bodyMediumff181725 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF181725),
      );
  static get bodyMediumff53b175 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF53B175),
      );
  static get bodyMediumff7c7c7c => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF7C7C7C),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displayMediumGreen400 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.green400,
      );
  static get displayMediumPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get displayMediumRed700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.red700,
      );
  // Headline text style
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28,
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallMplus1pBold =>
      theme.textTheme.headlineSmall!.mplus1pBold.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMplus1pBoldBluegray400 =>
      theme.textTheme.headlineSmall!.mplus1pBold.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Title text style
  static get titleLargeGray800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
}

extension on TextStyle {
  TextStyle get alata {
    return copyWith(
      fontFamily: 'Alata',
    );
  }

  TextStyle get gilroyMedium {
    return copyWith(
      fontFamily: 'Gilroy-Medium',
    );
  }

  TextStyle get mplus1pBold {
    return copyWith(
      fontFamily: 'Mplus 1p Bold',
    );
  }

  TextStyle get hKGrotesk {
    return copyWith(
      fontFamily: 'HKGrotesk',
    );
  }
}
