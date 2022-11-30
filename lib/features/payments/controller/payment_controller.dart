import 'package:get/get.dart';

class PaymenController extends GetxController {
  static PaymenController get find => Get.find();
  RxInt indexpicked = 0.obs;
  setIndex(int index) {
    indexpicked.value = index;
  }

  RxList img = [
    'airtime',
    'cable',
    'electricity',
    'credit',
    'insurance',
    'internet',
    'lottery',
    'travel',
    'utilities'
  ].obs;

  RxList label = [
    'Airtime and Data',
    'Cable TV',
    'Electricity Payment',
    'Credit and Loans',
    'Insurance',
    'Internet Services',
    'Betting, Lottery and...',
    'Travel and Hotel',
    'Utilities'
  ].obs;

  RxList network = ['mtn', 'airtel', 'glo', '9mobile'].obs;
  RxList cable = ['dstv', 'gotv', 'actv', 'iroko', 'kwese', 'startimes'].obs;
  RxList power = [
    'ekedc',
    'aedc',
    'kedc',
    'ibedc',
    'eedc',
  ].obs;
  RxList powerName = [
    'Eko',
    'Abeokuta',
    'Kaduna',
    'Ibadan',
    'Enugu',
  ].obs;
  RxList cableName =
      ['DsTv', 'GoTv', 'AcTv', 'IROKO TV', 'KWESE Tv', 'Startimes'].obs;
  RxList dataProvider = [
    'mtn',
    'airtel',
    'glo',
    '9mobile',
    'smile',
    'spectranet',
    'ipnx',
    'swift'
  ].obs;
  RxList networkName =
      ['Mtn Network', 'Airtel network', 'Glo network', '9mobile network'].obs;
}
