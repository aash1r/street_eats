import '../../../helpers/utils/export.dart';
import '../../../models/order_review_model.dart';
import 'components/order_review_container.dart';

class OrderReviewScreen extends StatelessWidget {
  const OrderReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: AppColors.blackColor,
            ),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: reviewList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                OrderReviewContainer(
                    image: reviewList[index].image,
                    name: reviewList[index].name,
                    date: reviewList[index].date,
                    content: reviewList[index].content)
              ],
            ).paddingAll(20);
          },
        ),
      ),
    );
  }
}
