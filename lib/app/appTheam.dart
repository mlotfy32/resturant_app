import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';

class Theam {
  ThemeData getAppTheam() {
    return ThemeData(
        scaffoldBackgroundColor: ColorManager.primaryColor,
        primaryColor: ColorManager.primaryColor,
        primaryColorLight: ColorManager.lightPrimary,
        primaryColorDark: ColorManager.darkPrimary,
        disabledColor: ColorManager.darkGray525252,
        splashColor: ColorManager.lightPrimary,
        cardTheme: CardTheme(
            color: ColorManager.wight,
            shadowColor: ColorManager.gray737477,
            elevation: AppSize.s4),
        appBarTheme: AppBarTheme(
            color: ColorManager.primaryColor,
            elevation: AppSize.s4,
            shadowColor: ColorManager.lightPrimary,
            titleTextStyle: FonstStyle.regular14
                .copyWith(color: Colors.white, fontSize: 16)),

        //textTheme
        textTheme: TextTheme(
            displayLarge: FonstStyle.semibold18
                .copyWith(color: ColorManager.darkGray525252),
            bodySmall: FonstStyle.regular14,
            headlineMedium:
                FonstStyle.medium16.copyWith(color: ColorManager.gray737477),
            titleSmall: FonstStyle.medium16
                .copyWith(color: ColorManager.lightGray9E9E9E, fontSize: 14),
            labelMedium:
                FonstStyle.medium16.copyWith(color: ColorManager.gray737477),
            bodyMedium: FonstStyle.medium16),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.all(AppPadding.p8),
            hintStyle: FonstStyle.regular14,
            labelStyle: FonstStyle.regular14,
            errorStyle:
                FonstStyle.regular14.copyWith(color: ColorManager.error),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManager.darkGray525252,
                  width: AppSize.s1_5,
                ),
                borderRadius: BorderRadius.circular(AppSize.s8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManager.primaryColor,
                  width: AppSize.s1_5,
                ),
                borderRadius: BorderRadius.circular(AppSize.s8)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManager.error,
                  width: AppSize.s1_5,
                ),
                borderRadius: BorderRadius.circular(AppSize.s8))));
  }
}
