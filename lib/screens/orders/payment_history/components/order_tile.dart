import '../../../../helpers/utils/export.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grayColor)),
      child: ListTile(
        leading: Image.asset(AppAssets.itemOne),
        title: Text(
          'Beef Roast',
          style: AppDecoration.semiBoldStyle(
              fontFamily: 'Nunito', fontSize: 9.h, color: AppColors.blackColor),
        ),
        subtitle: const Text('Zinger Jumbo Burger'),
        trailing: Text(
          '\$ 40.99',
          style: AppDecoration.semiBoldStyle(
              fontFamily: 'Nunito', fontSize: 9.h, color: AppColors.blackColor),
        ).paddingOnly(top: 25),
      ),
    );
  }
}

Widget buildWalletTiles() {
  return Column(
    children: List.generate(
        5,
        (index) => const Column(
              children: [
                OrderTile(),
                SizedBox(
                  height: 15,
                ),
              ],
            )),
  );
}
