import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/presentation/base/baseViewModel.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';
import 'package:resturantapp/presentation/resorces/assetsmanager.dart';

class onBordingViewModel extends BaseviewModel {
// onBording Private Functions
  List<SlideObject> getSliderData() {
    print('ffffffffffaaaaaaaaaaffffffff');

    return [
      SlideObject(AppStrings.onbordingTitle2, AppStrings.subTitleonoording2,
          AssetImages.onbordingLogo2),
      SlideObject(AppStrings.onbordingTitle3, AppStrings.subTitleonoording3,
          AssetImages.onbordingLogo3),
      SlideObject(AppStrings.onbordingTitle4, AppStrings.subTitleonoording4,
          AssetImages.onbordingLogo4),
    ];
  }

  @override
  void start() {
    print('ffffffffffffffffff');
    super.start();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class SliderViewObject {}
