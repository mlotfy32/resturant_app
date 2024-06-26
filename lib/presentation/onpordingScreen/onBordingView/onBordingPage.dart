import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/on_bord_state_cubit.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/on_bord_state_state.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';

class onBordingPage extends StatelessWidget {
  final SlideObject slideObject;
  onBordingPage({super.key, required this.slideObject});
  @override
  int _currentIndex = 0;
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p40, horizontal: AppPadding.p8),
      child: BlocConsumer<OnBordStateCubit, OnBordStateState>(
          listener: (context, state) {
        if (state is updateOnBordState) {
          _currentIndex = state.newIndex;
        }
      }, builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSize.s80,
            ),
            Text(
              slideObject.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: AppSize.s20,
            ),
            Text(
              slideObject.subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: AppSize.s80,
            ),
            SvgPicture.asset(
              '${slideObject.image}',
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Get.offAllNamed('/logIn');
                },
                child: Text(
                  'Skip',
                  style: FonstStyle.medium16,
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
