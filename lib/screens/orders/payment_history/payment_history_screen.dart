import '../../../helpers/utils/export.dart';
import '../../../helpers/widgets/container_selection_row.dart';
import 'components/order_tile.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({super.key});
  static const routeName = '/payment-history-screen';

  @override
  State<PaymentHistoryScreen> createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  int selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.secondaryBg), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssets.document),
                  20.horizontalSpace,
                  Text(
                    'Payment History',
                    style: AppDecoration.mediumStyle(
                        fontFamily: 'Nunito',
                        fontSize: 10.h,
                        color: AppColors.whiteColor),
                  ),
                ],
              ),
              30.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSelectionRow(
                    containerTexts: ['Paid Order', 'Cancelled Orders'],
                  ),
                ],
              ),
              10.verticalSpace,
              buildWalletTiles(),
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
