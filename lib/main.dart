
import 'package:flutter/material.dart';
import 'package:pointup/loginscreens/forgot_password.dart';
import 'package:pointup/loginscreens/otp_page.dart';
import 'package:pointup/loginscreens/otp_two_page.dart';
import 'package:pointup/loginscreens/reset_password.dart';
import 'package:pointup/loginscreens/sign_in.dart';
import 'package:pointup/onboardscreen/onboarding_screen.dart';
import 'package:pointup/onboardscreen/splash_screen.dart';
import 'package:pointup/routes/routes_manager.dart';
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
import 'package:pointup/screens/new.dart';
import 'package:pointup/screens/orders/cancel_orders.dart';
import 'package:pointup/screens/orders/confirmed_orders.dart';
import 'package:pointup/screens/receiptsubmit/receipt_approvel.dart';
import 'package:pointup/screens/receiptsubmit/receipt_details.dart';
import 'package:pointup/screens/receiptsubmit/receipt_submit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff19184D),
        secondaryHeaderColor: const Color(0xffF99F1E),
        hintColor: const Color(0xffA1A2A8),
        errorColor: const Color(0xffEF2253),
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute:Routes.splashRoute,
    );
  }
}
