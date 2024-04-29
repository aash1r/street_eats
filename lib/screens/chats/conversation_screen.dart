import '../../helpers/utils/export.dart';
import '../../models/conversation_model.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});
  static const routeName = '/conversation-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.keyboard_backspace_rounded,
            color: AppColors.themeColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Chat with Vendor',
          style: AppDecoration.semiBoldStyle(
              fontFamily: 'Nunito', fontSize: 8.h, color: AppColors.blackColor),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: .14.sh, left: 20, right: 20),
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemCount: conversationList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            conversationList[index].senderImage,
                            height: 27.h,
                            width: 100.w,
                          ),
                          15.horizontalSpace,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  conversationList[index].name,
                                  style: TextStyle(
                                      fontSize: 8.h,
                                      fontWeight: AppColors.bold),
                                ),
                                Text(
                                  conversationList[index].message,
                                  style: TextStyle(
                                    fontSize: 6.h,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.themeColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      5.verticalSpace,
                      Text(
                        conversationList[index].time,
                        style: TextStyle(
                            fontSize: 6.h, color: AppColors.themeColor),
                      ),
                      10.h.verticalSpace,
                      Padding(
                        padding: EdgeInsets.only(left: 31.w),
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 26.w,
                            top: 15.h,
                            right: 14.w,
                            bottom: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.themeColor.withOpacity(.1.r),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                conversationList[index].message,
                                style: TextStyle(
                                  fontSize: 6.h,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.themeColor,
                                ),
                              ),
                              5.verticalSpace,
                              Text(
                                conversationList[index].time,
                                style: TextStyle(
                                    fontSize: 6.h, color: AppColors.themeColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      10.h.verticalSpace,
                    ],
                  );
                }),
            InputField(
              heightt: 23.h,
              hint: "Type your message here...",
              widthh: double.infinity,
              isPassword: false,
              suffixIcon: Container(
                margin: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, gradient: AppColors.gradient),
                child: SvgPicture.asset(
                  AppAssets.sendIcon,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
