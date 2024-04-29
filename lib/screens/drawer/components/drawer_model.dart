import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/employees/my_employees_screen.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import 'package:street_eats_vendor/screens/menu/main_menu_screen.dart';
import 'package:street_eats_vendor/screens/my_earnings/earnings_screen.dart';
import 'package:street_eats_vendor/screens/orders/order_history/order_history_screen.dart';
import 'package:street_eats_vendor/screens/orders/payment_history/payment_history_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/service_order_screen.dart';
import 'package:street_eats_vendor/screens/profile/my_profile_screen.dart';
import 'package:street_eats_vendor/screens/settings/help_and_support.dart';
import 'package:street_eats_vendor/screens/settings/settings_screen.dart';
import 'drawer_screen_model.dart';

class DrawerModel {
  String? image;
  String name;
  String email;
  bool isOwner;
  List<DrawerScreenModel> screens;

  DrawerModel({
    this.isOwner = false,
    required this.screens,
    required this.email,
    this.image,
    required this.name,
  });

  static DrawerModel activeOwner = DrawerModel(
    screens: [
      DrawerScreenModel(
        page: const HomeScreen(),
        text: 'Home',
        image: AppAssets.homeIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const MyProfileScreen(),
        text: 'Profile',
        image: AppAssets.profileDrawerIcon,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: OrderHistoryScreen(),
        text: 'Order History',
        image: AppAssets.orderHistoryIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: Container(),
        text: 'Announcements/Promotions',
        image: AppAssets.announcementIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const MainMenuScreen(),
        text: 'Add Menu',
        image: AppAssets.addMenuIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const EarningsScreen(),
        text: 'My Earnings',
        image: AppAssets.earningsIcon,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const MyEmployeesScreen(),
        text: 'Employees',
        image: AppAssets.profileDrawerIcon,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const SettingsScreen(),
        text: 'Settings',
        image: AppAssets.settingIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const HelpAndSupportScreen(),
        text: 'Help and Support',
        image: AppAssets.helpAndSupportIcon,
        onTap: () {},
      ),
    ],
    email: '',
    name: 'John Smith owner',
    isOwner: true,
  );

  static DrawerModel inActiveOwner = DrawerModel(
    screens: [
      DrawerScreenModel(
        page: const HomeScreen(),
        text: 'Home',
        image: AppAssets.homeIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: OrderHistoryScreen(),
        text: 'Order History',
        image: AppAssets.orderHistoryIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: Container(),
        text: 'Announcements/Promotions',
        image: AppAssets.announcementIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const ServiceOrdersScreen(),
        text: 'Service Order Requests',
        image: AppAssets.serviceOrdersGradientIcon,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const MainMenuScreen(),
        text: 'Add Menu',
        image: AppAssets.addMenuIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const PaymentHistoryScreen(),
        text: 'Payment History',
        image: AppAssets.paymentHistoryIconGradient,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const HelpAndSupportScreen(),
        text: 'Help and Support',
        image: AppAssets.helpAndSupportIcon,
        onTap: () {},
      ),
      DrawerScreenModel(
        page: const SettingsScreen(),
        text: 'Settings',
        image: AppAssets.settingIconGradient,
        onTap: () {},
      ),
    ],
    email: '',
    name: 'John Smith non owner',
  );
}
