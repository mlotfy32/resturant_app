import 'package:flutter/material.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/onBordingViewModel.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingView/onBordingPage.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/on_bord_state_cubit.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/on_bord_state_state.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';
import 'package:resturantapp/presentation/resorces/assetsmanager.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantapp/domain/models.dart';

class onpordingScreen extends StatefulWidget {
  const onpordingScreen({super.key});

  @override
  State<onpordingScreen> createState() => _onpordingScreenState();
}

class _onpordingScreenState extends State<onpordingScreen> {
  @override
  int _currentIndex = 0;
  PageController _controller = PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.wight,
      bottomSheet: Container(
        color: ColorManager.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<OnBordStateCubit>(context)
                      .updateStatedecrement(_currentIndex, _controller);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: ColorManager.wight,
                )),
            SizedBox(
              width: AppSize.s80,
              height: AppSize.s40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Expanded(
                  child: Center(
                    child: BlocBuilder<OnBordStateCubit, OnBordStateState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: CircleAvatar(
                            radius: 5,
                            child: CircleAvatar(
                              backgroundColor: index == _currentIndex
                                  ? ColorManager.primaryColor
                                  : ColorManager.wight,
                              radius: 4,
                            ),
                            backgroundColor: ColorManager.wight,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                itemCount: 3,
              ),
            ),
            IconButton(
                onPressed: () {
                  BlocProvider.of<OnBordStateCubit>(context)
                      .updateStateIncrement(_currentIndex, _controller);
                },
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: ColorManager.wight,
                ))
          ],
        ),
      ),
      body: BlocConsumer<OnBordStateCubit, OnBordStateState>(
        listener: (context, state) {
          if (state is updateOnBordState) {
            _currentIndex = state.newIndex;
          }
        },
        builder: (context, state) {
          return PageView.builder(
            onPageChanged: (value) {
              BlocProvider.of<OnBordStateCubit>(context)
                  .emit(updateOnBordState(newIndex: value));
            },
            itemCount: 3,
            controller: _controller,
            itemBuilder: (context, index) => onBordingPage(
              slideObject: onBordingViewModel().getSliderData()[_currentIndex],
            ),
          );
        },
      ),
    );
  }
}
