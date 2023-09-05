import 'package:mobx/mobx.dart';

part 'pin_check_controller.g.dart';

class PinCheckController = PinCheckControllerBase with _$PinCheckController;

abstract class PinCheckControllerBase with Store implements PinCheckI {
  @override
  @action
  void check(int key) {}
}

abstract class PinCheckI {
  @action
  void check(int key);
}
