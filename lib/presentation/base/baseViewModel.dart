class BaseviewModel extends BaseViewModelInputs
    implements BaseViewModelOutputs {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
}

abstract class BaseViewModelInputs {
  void start();
  void dispose();
}

abstract class BaseViewModelOutputs {}
