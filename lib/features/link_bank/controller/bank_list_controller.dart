import 'package:get/get.dart';

class BankListController extends GetxController {
  static BankListController get find => Get.find();
  RxInt bankPicked = 0.obs;
  RxInt index = 0.obs;
  RxList<String> logoList = [
    'uba',
    'zenith',
    'sterling_bank',
    'keystone',
    'fidelity',
    'firstbank',
    'access',
    'gtb',
  ].obs;
  RxList<String> bankList = [
    'UBA bank',
    'Zenith bank',
    'Sterling bank',
    'Keystone bank',
    'Fidelity bank',
    'FirstBank',
    'Access bank',
    'GTBank',
  ].obs;
  RxList<String> acctType = [
    'Savings accounts',
    'Current accounts',
    'Foreign accounts',
    'Term deposits',
    'Mortgage',
  ].obs;
  RxList<String> acctBody = [
    'Summary info about savings account',
    'Summary info about current account',
    'Summary info about foreign account',
    'Summary info about term deposits account',
    'Summary info about mortgage account',
  ].obs;
  RxBool view = true.obs;
  listView() {
    view.value = true;
  }

  gridView() {
    view.value = false;
  }

  indexPicker(int index) {
    bankPicked.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    indexPicker(int index) {
      bankPicked.value = index;
    }
  }
}
