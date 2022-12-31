import 'package:flutter/material.dart';
import 'package:pointup/loginscreens/forgot_password.dart';
import 'package:pointup/loginscreens/otp_page.dart';
import 'package:pointup/loginscreens/otp_two_page.dart';
import 'package:pointup/loginscreens/reset_password.dart';
import 'package:pointup/loginscreens/sign_in.dart';
import 'package:pointup/onboardscreen/onboarding_screen.dart';
import 'package:pointup/onboardscreen/splash_screen.dart';
import 'package:pointup/screens/DrawerItems/changepassword/change_password.dart';
import 'package:pointup/screens/DrawerItems/changepassword/otp_verification.dart';
import 'package:pointup/screens/DrawerItems/changepassword/password_rest.dart';
import 'package:pointup/screens/DrawerItems/contact_us.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/customer_review_and_rating.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/view_customer_review_list.dart';
import 'package:pointup/screens/DrawerItems/my_shop_qrcode.dart';
import 'package:pointup/screens/DrawerItems/privacy_and_policy.dart';
import 'package:pointup/screens/DrawerItems/reports_page.dart';
import 'package:pointup/screens/DrawerItems/terms_and_condition.dart';
import 'package:pointup/screens/DrawerItems/user_information.dart';
import 'package:pointup/screens/Notification/notification_page.dart';
import 'package:pointup/screens/Notification/notification_details.dart';
import 'package:pointup/screens/Tickets/ticket_history_closed.dart';
import 'package:pointup/screens/Tickets/ticket_history_open.dart';
import 'package:pointup/screens/counter/order_redeem_page.dart';
import 'package:pointup/screens/counter/points_credit_page.dart';
import 'package:pointup/screens/counter/points_redeem_page.dart';
import 'package:pointup/screens/counter/redeem_second_page.dart';
import 'package:pointup/screens/counter/transaction_details_credit.dart';
import 'package:pointup/screens/counter/transaction_details_redeem.dart';
import 'package:pointup/screens/counter/transaction_page.dart';
import 'package:pointup/screens/counter/view_orders.dart';
import 'package:pointup/screens/navbar/bottom_navbar.dart';
import 'package:pointup/screens/orders/cancel_orders.dart';
import 'package:pointup/screens/orders/confirmed_orders.dart';
import 'package:pointup/screens/receiptsubmit/receipt_approvel.dart';
import 'package:pointup/screens/receiptsubmit/receipt_details.dart';
import 'package:pointup/screens/receiptsubmit/receipt_submit_page.dart';

class Routes{
  static const String  splashRoute='/';
  static const String  onboardScreen='second';
  static const String  signIn='third';
  static const String  forgetPassword='forth';
  static const String  otpTwo='fifth';
  static const String  resetPassword='sixth';
  static const String  otp='seventh';
  static const String  bottomNavBar='eight';
  static const String  pointCredit='pointcredit';
  static const String  pointRedeem='pointredeem';
  static const String  redeemSecondPage='redeemsecond';
  static const String  orderRedeem='orderredeem';
  static const String viewOrder='vieworder';
  static const String transactionPage='transaction';
  static const String transactionPointCredit='transactionpointcredit';
  static const String transactionPointRedeem='transactionpointredeem';
  static const String notification='notification';
  static const String notificationDetails='notificationdetails';
  static const String confirmOrders='confirmorders';
  static const String cancelOrders='cancelorders';
  static const String receiptSubmit='receiptsubmit';
  static const String receiptDetailsPage='receiptdetailspage';
  static const String receiptApprovel='receiptapprovel';
  static const String ticketHistoryOpen='tickethistoryopen';
  static const String ticketHistoryClosed='tickethistoryclosed';
  static const String myShopQrcode='myshopqrcode';
  static const String userInformation='userinformation';
  static const String changePassword='changepassword';
  static const String otpVerification='otpverification';
  static const String passwordRest='passwordrest';
  static const String reportPage='reportpage';
  static const String customerViewAndRating='customerviewandrating';
  static const String viewCustomerReviewList='viewcustomerreviewlist';
  static const String contactus='contactus';
  static const String termsAndCondition='termsandcondition';
  static const String privacyAndPolicy='privacyandpolicy';
  static const String bottomNavbar='bottomnavbar';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onboardScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case Routes.otpTwo:
        return MaterialPageRoute(builder: (_) => const OtpTwoPage());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.otp:
        return MaterialPageRoute(builder: (_) => const OtpPage());
      case Routes.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case Routes.pointCredit:
        return MaterialPageRoute(builder: (_) => const PointsCreditPage());
      case Routes.pointRedeem:
        return MaterialPageRoute(builder: (_) => const PointsRedeemPage());
      case Routes.redeemSecondPage:
        return MaterialPageRoute(builder: (_) => const RedeemSecondPage());
      case Routes.orderRedeem:
        return MaterialPageRoute(builder: (_) => const OrderRedeemPage());
      case Routes.viewOrder:
        return MaterialPageRoute(builder: (_) => const  ViewOrders());
      case Routes.transactionPage:
        return MaterialPageRoute(builder: (_) => const TransactionPage());
      case Routes.transactionPointCredit:
        return MaterialPageRoute(builder: (_) => const TransactionCredit());
      case Routes.transactionPointRedeem:
        return MaterialPageRoute(builder: (_) => const TransactionRedeem());
      case Routes.notification:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case Routes.notificationDetails:
        return MaterialPageRoute(builder: (_) => const NotificationDetails());
      case Routes.confirmOrders:
        return MaterialPageRoute(builder: (_) => const ConfirmedOrders());
      case Routes.cancelOrders:
        return MaterialPageRoute(builder: (_) => const CancelOrders());
      case Routes.receiptSubmit:
        return MaterialPageRoute(builder: (_) => const ReceiptSubmitPage());
      case Routes.receiptDetailsPage:
        return MaterialPageRoute(builder: (_) => const ReceiptDetailsPage());
      case Routes.receiptApprovel:
        return MaterialPageRoute(builder: (_) => const ReceiptApproval());
      case Routes.ticketHistoryOpen:
        return MaterialPageRoute(builder: (_) => const TicketHistoryOpen());
      case Routes.ticketHistoryClosed:
        return MaterialPageRoute(builder: (_) => const TicketHistoryClosed());
      case Routes.myShopQrcode:
        return MaterialPageRoute(builder: (_) => const MYshopQrCode());
      case Routes.userInformation:
        return MaterialPageRoute(builder: (_) => const UserInformation());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
      case Routes.otpVerification:
        return MaterialPageRoute(builder: (_) => const OtpVerification());
      case Routes.passwordRest:
        return MaterialPageRoute(builder: (_) => const PasswordReset());
      case Routes.reportPage:
        return MaterialPageRoute(builder: (_) => const ReportsPage());
      case Routes.customerViewAndRating:
        return MaterialPageRoute(builder: (_) => const CustomerReviewAndRating());
      case Routes.viewCustomerReviewList:
        return MaterialPageRoute(builder: (_) => const ViewCustomerReviewList());
      case Routes.contactus:
        return MaterialPageRoute(builder: (_) => const ContactUs());
      case Routes.termsAndCondition:
        return MaterialPageRoute(builder: (_) => TermsAndCondition());
      case Routes.privacyAndPolicy:
        return MaterialPageRoute(builder: (_) =>  PrivacyAndPolicy());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(title: const Text("No Route Found"),
      ),
      body: const Center(
        child: Text("No Route Found"),
      ),
    )
    );

  }
}