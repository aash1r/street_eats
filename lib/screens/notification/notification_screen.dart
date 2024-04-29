import '../../helpers/utils/export.dart';
import '../../models/notification_model.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const routeName = '/notification-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: AppColors.themeColor,
            ),
          ),
          title: Text(
            'Notifications',
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 10.h,
                color: AppColors.blackColor),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: AppColors.blackColor.withOpacity(.1.r),
          ),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: notificationList.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    notificationList[index].title,
                    style: TextStyle(
                      fontSize: 8.h,
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text(
                    notificationList[index].date,
                    style: TextStyle(
                      fontSize: 6.h,
                      color: AppColors.blackColor.withOpacity(0.6),
                    ),
                  )
                ],
              ),
              5.verticalSpace,
              Text(
                notificationList[index].content,
                style: TextStyle(
                  fontSize: 6.h,
                  fontWeight: AppColors.bold,
                  color: AppColors.themeColor.withOpacity(.8.r),
                ),
              ),
            ],
          ),
        ).paddingAll(20),
      ),
    );
  }
}
