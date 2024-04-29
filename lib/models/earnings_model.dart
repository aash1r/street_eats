import 'package:street_eats_vendor/helpers/styles/app_assets.dart';

class EarningsModel {
  String image, name, dnt, transactionTypes, amount;
  EarningsModel(
      {required this.amount,
      required this.dnt,
      required this.image,
      required this.name,
      required this.transactionTypes});
}

List<EarningsModel> earningList = [
  EarningsModel(
      amount: '\$100',
      dnt: 'Aug 25, 2022 | 10:00 AM',
      image: AppAssets.dummyPorfileImg,
      name: 'Anzor Alem',
      transactionTypes: 'Credit'),
  EarningsModel(
      amount: '\$28.30',
      dnt: 'Aug 25, 2022 | 10:00 AM',
      image: AppAssets.dummyPorfileImg,
      name: 'Leah Jeffries',
      transactionTypes: 'Credit'),
  EarningsModel(
      amount: '\$76',
      dnt: 'Aug 25, 2022 | 10:00 AM',
      image: AppAssets.dummyPorfileImg,
      name: 'Anzor Alem',
      transactionTypes: 'Credit'),
  EarningsModel(
      amount: '\$89',
      dnt: 'Aug 25, 2022 | 10:00 AM',
      image: AppAssets.dummyPorfileImg,
      name: 'Leah Jeffries',
      transactionTypes: 'Credit'),
];
