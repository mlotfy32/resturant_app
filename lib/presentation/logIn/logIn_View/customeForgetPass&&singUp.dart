import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';

class CustomeRow extends StatelessWidget {
  const CustomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.forgetPassword,
              style: FonstStyle.regular14
                  .copyWith(color: ColorManager.primaryColor),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.notMemper,
              style: FonstStyle.regular14
                  .copyWith(color: ColorManager.primaryColor),
            )),
      ],
    );
  }
}
