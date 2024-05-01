import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/chats/conversation_screen.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/order_tracking_screen.dart';
import 'package:street_eats_vendor/screens/profile/create_profile_screen.dart';
import 'package:street_eats_vendor/screens/settings/settings_screen.dart';

class BottomBar {
  final String image;
  final String routeName;

  BottomBar({required this.image, required this.routeName});

  static final allBottomBarItems = [
    BottomBar(image: AppAssets.lockIcon, routeName: HomeScreen.routeName),
    BottomBar(
        image: AppAssets.lockIcon, routeName: ConversationScreen.routeName),
    BottomBar(
        image: AppAssets.lockIcon, routeName: CreateProfileScreen.routeName),
    BottomBar(image: AppAssets.lockIcon, routeName: SettingsScreen.routeName),
    BottomBar(
        image: AppAssets.lockIcon, routeName: OrderTrackingScreen.routeName),
  ];
}
