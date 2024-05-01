import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/auth/forget_password.dart';
import 'package:street_eats_vendor/screens/auth/login_screen.dart';
import 'package:street_eats_vendor/screens/auth/signup_screen.dart';
import 'package:street_eats_vendor/screens/auth/update_password_screen.dart';
import 'package:street_eats_vendor/screens/auth/verification_screen.dart';
import 'package:street_eats_vendor/screens/drawer/custom_drawer.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import 'package:street_eats_vendor/screens/notification/notification_screen.dart';
import 'package:street_eats_vendor/screens/orders/payment_history/payment_history_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/agreement_screen/create_agreement_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/catering_contract_form.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/order_tracking_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/service_order_details.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/service_order_screen.dart';
import 'package:street_eats_vendor/screens/profile/add_operation_screen.dart';
import 'package:street_eats_vendor/screens/profile/create_profile_screen.dart';
import 'package:street_eats_vendor/screens/profile/edit_operation_screen.dart';
import 'package:street_eats_vendor/screens/settings/change_password_screen.dart';
import 'package:street_eats_vendor/screens/settings/help_and_support.dart';
import 'package:street_eats_vendor/screens/settings/privacy_policy_screen.dart';
import 'package:street_eats_vendor/screens/settings/settings_screen.dart';
import 'package:street_eats_vendor/screens/settings/terms_and_condition_screen.dart';
import 'package:street_eats_vendor/screens/splash_screen/splash_screen.dart';

import 'screens/bindings.dart';
import 'screens/bottom_bar/bottom_nav_bar.dart';
import 'screens/chats/conversation_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // final args =
    //     (settings.arguments ?? <String, dynamic>{}) as Map<String, dynamic>;

    switch (settings.name) {
      case SplashScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const SplashScreen(),
        );
      case LoginScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => LoginScreen(),
        );
      case SignupScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const SignupScreen(),
        );
      case ForgetPasswordScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => ForgetPasswordScreen(),
        );
      case UpdatePasswordScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => UpdatePasswordScreen(),
        );
      case VerificationScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const VerificationScreen(),
        );
      case BottomNavBar.routeName:
        return GetPageRoute(
            settings: settings,
            page: () => const BottomNavBar(),
            binding: Binding());
      case HomeScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const HomeScreen(),
        );
      case ConversationScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const ConversationScreen(),
        );
      case CustomDrawer.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const CustomDrawer(),
        );
      case NotificationScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const NotificationScreen(),
        );
      case PaymentHistoryScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const PaymentHistoryScreen(),
        );
      case ServiceOrdersScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const ServiceOrdersScreen(),
        );
      case ServiceOrderDetails.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const ServiceOrderDetails(
            isRequested: false,
            isInProgress: true,
            isCompleted: false,
            isCancelled: false,
          ),
        );
      case OrderTrackingScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const OrderTrackingScreen(
            status: '',
          ),
        );
      case CateringContractFormScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const CateringContractFormScreen(),
        );
      case CreateAgreementScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const CreateAgreementScreen(),
        );
      case AddOperationScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const AddOperationScreen(),
        );
      case CreateProfileScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const CreateProfileScreen(),
        );
      case EditOperationScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const EditOperationScreen(),
        );
      case SettingsScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const SettingsScreen(),
        );
      case ChangePasswordScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const ChangePasswordScreen(),
        );
      case HelpAndSupportScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const HelpAndSupportScreen(),
        );
      case PrivacyPolicyScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const PrivacyPolicyScreen(),
        );
      case TermsConditionScreen.routeName:
        return GetPageRoute(
          settings: settings,
          page: () => const TermsConditionScreen(),
        );
      default:
        return errorRoute(settings);
    }
  }

  static Route<dynamic> errorRoute(settings) {
    return GetPageRoute(
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
        settings: settings,
        page: () {
          return const Scaffold(
            body: Center(
              child: Text('No page found!'),
            ),
          );
        });
  }
}
