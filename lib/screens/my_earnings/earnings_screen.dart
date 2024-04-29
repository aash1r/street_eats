import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/models/earnings_model.dart';
import 'package:street_eats_vendor/screens/my_earnings/components/earnings_tile.dart';
import 'package:street_eats_vendor/screens/my_earnings/transfer_screen.dart';

class EarningsScreen extends StatelessWidget {
  const EarningsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.keyboard_backspace_rounded,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: AppColors.gradient,
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Image.asset(AppAssets.purseIcon),
                  title: Text(
                    'Your Balance',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.whiteColor),
                  ),
                  subtitle: Text(
                    '\$548.00',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 13.h,
                        color: AppColors.whiteColor),
                  ),
                  trailing: GestureDetector(
                    onTap: () => Get.to(() => const TransferScreen()),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Transfer',
                        style: AppDecoration.semiBoldStyle(
                            fontFamily: 'Nunito',
                            fontSize: 6.5.h,
                            color: AppColors.blackColor),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SizedBox(
                height: Get.height,
                child: ListView.builder(
                  itemCount: earningList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        EarningsTile(
                            image: earningList[index].image,
                            name: earningList[index].name,
                            dnt: earningList[index].dnt,
                            transactionTypes:
                                earningList[index].transactionTypes,
                            amount: earningList[index].amount),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ),
              )
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
