import 'package:get/get.dart';

class SavingsTargetController extends GetxController {
  RxBool daily = true.obs;
  setDaily(bool state) {
    daily.value = state;
    weekly.value = false;
    monthly.value = false;
    anytime.value = false;
  }

  RxBool weekly = true.obs;
  setWeekly(bool state) {
    weekly.value = state;
    daily.value = false;
    monthly.value = false;
    anytime.value = false;
  }

  RxBool monthly = true.obs;
  setMonthly(bool state) {
    monthly.value = state;
    daily.value = false;
    weekly.value = false;
    anytime.value = false;
  }

  RxBool anytime = true.obs;
  setAnytime(bool state) {
    anytime.value = state;
    daily.value = false;
    monthly.value = false;
    weekly.value = false;
  }

  RxBool savings = true.obs;
  setsavings(bool state) {
    savings.value = state;
    current.value = false;
    foreign.value = false;
    deposit.value = false;
  }

  RxBool current = true.obs;
  setCurrent(bool state) {
    current.value = state;
    savings.value = false;
    foreign.value = false;
    deposit.value = false;
  }

  RxBool foreign = true.obs;
  setForeign(bool state) {
    foreign.value = state;
    savings.value = false;
    current.value = false;
    deposit.value = false;
  }

  RxBool deposit = true.obs;
  setDeposit(bool state) {
    deposit.value = state;
    current.value = false;
    savings.value = false;
    foreign.value = false;
  }

  RxBool auto = true.obs;
  setAuto(bool state) {
    auto.value = state;
    manual.value = false;
  }

  RxBool manual = true.obs;
  setmanual(bool state) {
    manual.value = state;
    auto.value = false;
  }

  RxBool reminder = true.obs;
  RxList targets = [
    'wedding',
    'travel',
    'renovation',
    'newhouse',
    'medical',
    'investment',
    'insurance',
    'travel',
    'death',
    'education',
    'furniture',
    'car',
    'christmas',
    'business',
    'birthday',
  ].obs;
  RxInt target = 0.obs;
  setTarget(int index) {
    target.value = index;
  }
}
