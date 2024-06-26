import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';

class CustomeButton extends StatelessWidget {
  CustomeButton(
      {super.key, required this.title, this.onTap, required this.allhasData});
  final String title;
  final Function()? onTap;
  final bool allhasData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(seconds: 2),
        margin: EdgeInsets.only(top: AppMargin.m40, bottom: AppMargin.m12),
        width: 300,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: allhasData == true
                ? ColorManager.primaryColor
                : ColorManager.gray737477),
        child: Center(
          child: Text(
            title,
            style: FonstStyle.regular14
                .copyWith(fontSize: 18, color: ColorManager.wight),
          ),
        ),
      ),
    );
  }
}
