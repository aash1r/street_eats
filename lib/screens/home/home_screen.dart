// ignore_for_file: prefer_const_constructors
import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/helpers/widgets/line_chart/custom_line_chart.dart';
import 'package:street_eats_vendor/screens/drawer/custom_drawer.dart';
import 'package:street_eats_vendor/screens/notification/notification_screen.dart';
import '../../helpers/utils/export.dart';
import 'components/stacked_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          AppAssets.appBg,
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) {
              return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: Container(
                        // height: 84.h,
                        // width: 84.w,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          AppAssets.menuIcon,
                          fit: BoxFit.scaleDown,
                        )),
                  ));
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: GestureDetector(
                child: Container(
                  height: 14.h,
                  width: 190.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: CustomDropDownButton(
                    hint: "English",
                    items: const ["Spanish", "French", "Czech"],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: GestureDetector(
                onTap: () => changePage(NotificationScreen.routeName),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    AppAssets.bellIcon,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLineChart(),
              15.verticalSpace,
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const StackedContainer(
                        number: "1,234",
                        text: "Total Order\nCompleted",
                        svgimage: ''
                        // AppAssets.lock,
                        ),
                  ),
                  // 5.horizontalSpace,
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const StackedContainer(
                        number: "1,234", text: "My\nEarnings", svgimage: ''
                        // AppAssets.lock,
                        ),
                  ),
                ],
              )
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
