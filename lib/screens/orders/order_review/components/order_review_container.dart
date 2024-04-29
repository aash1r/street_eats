import '../../../../helpers/utils/export.dart';
import '../../../../helpers/widgets/rating_bar_widget.dart';

class OrderReviewContainer extends StatelessWidget {
  const OrderReviewContainer(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      required this.content});
  final String image;
  final String name;
  final String date;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.r),
            color: AppColors.grayColor.withOpacity(.5.r),
            blurRadius: 3.r,
          ),
        ],
        border: Border.all(
          width: 1.w,
          color: const Color.fromARGB(255, 90, 80, 131),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    image,
                    scale: 2,
                  ),
                  25.w.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 7.h,
                          fontWeight: AppColors.bold,
                          color: AppColors.themeColor,
                        ),
                      ),
                      RatingBarWidget(
                        size: 23.r,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 5.5.h,
                  color: AppColors.contentTextColor,
                  fontWeight: AppColors.light,
                ),
              )
            ],
          ),
          5.h.verticalSpace,
          Text(
            content,
            style: TextStyle(
              fontSize: 5.h,
              color: AppColors.contentTextColor,
            ),
          )
        ],
      ).paddingAll(20),
    );
  }
}
