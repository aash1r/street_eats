import '../../../helpers/utils/export.dart';

class EarningsTile extends StatelessWidget {
  const EarningsTile(
      {super.key,
      required this.image,
      required this.name,
      required this.dnt,
      required this.transactionTypes,
      required this.amount});

  final String image, name, dnt, transactionTypes, amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        name,
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 8.h, color: AppColors.blackColor),
      ),
      subtitle: Text(dnt),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            amount,
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 8.h,
                color: AppColors.blackColor),
          ),
          Text(
            transactionTypes,
            style: AppDecoration.mediumStyle(
                fontFamily: 'Nunito',
                fontSize: 6.h,
                color: AppColors.blackColor),
          )
        ],
      ),
    );
  }
}
