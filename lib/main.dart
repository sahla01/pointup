
import 'package:flutter/material.dart';
import 'package:pointup/loginscreens/forgotpassword.dart';
import 'package:pointup/loginscreens/otppage.dart';
import 'package:pointup/loginscreens/otptwopage.dart';
import 'package:pointup/loginscreens/resetpassword.dart';
import 'package:pointup/loginscreens/signin.dart';
import 'package:pointup/onboardscreen/onboardingscreen.dart';
import 'package:pointup/onboardscreen/splashscreen.dart';
import 'package:pointup/screens/DrawerItems/changepassword/changepassword.dart';
import 'package:pointup/screens/DrawerItems/changepassword/otpverification.dart';
import 'package:pointup/screens/DrawerItems/changepassword/passwordrest.dart';
import 'package:pointup/screens/DrawerItems/contactus.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/customerreviewandrating.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/viewcustomerreviewList.dart';
import 'package:pointup/screens/DrawerItems/myshopqrcode.dart';
import 'package:pointup/screens/DrawerItems/privacyandpolicy.dart';
import 'package:pointup/screens/DrawerItems/reports.dart';
import 'package:pointup/screens/DrawerItems/termsandcondition.dart';
import 'package:pointup/screens/DrawerItems/userinfo.dart';
import 'package:pointup/screens/Notification/notification.dart';
import 'package:pointup/screens/Notification/notificationdetails.dart';
import 'package:pointup/screens/Tickets/tickethistoryclosed.dart';
import 'package:pointup/screens/Tickets/tickethistoryopen.dart';
import 'package:pointup/screens/counter/orderredeempage.dart';
import 'package:pointup/screens/counter/pointscreditpage.dart';
import 'package:pointup/screens/counter/pointsredeempage.dart';
import 'package:pointup/screens/counter/redeemsecondpage.dart';
import 'package:pointup/screens/counter/transactiondetailscredit.dart';
import 'package:pointup/screens/counter/transactiondetailsredeem.dart';
import 'package:pointup/screens/counter/transactionpage.dart';
import 'package:pointup/screens/counter/vieworders.dart';
import 'package:pointup/screens/navbar/bottomnavbar.dart';
import 'package:pointup/screens/new.dart';
import 'package:pointup/screens/orders/cancelorders.dart';
import 'package:pointup/screens/orders/confirmedorders.dart';
import 'package:pointup/screens/receiptsubmit/receiptapprovel.dart';
import 'package:pointup/screens/receiptsubmit/receiptdetails.dart';
import 'package:pointup/screens/receiptsubmit/receiptsubmitpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        // fontFamily: 'Open Sans',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/second': (context) => const OnBoardingScreen(),
        '/third':(context) => const SignIn(),
        '/fourth':(context) => const ForgotPasswordPage(),
        '/fifth':(context) => const OtpTwoPage(),
        '/sixth':(context) => const ResetPassword(),
        '/seventh':(context) => const OtpPage(),
        '/eight':(context)=> const BottomNavBar(),
        '/pointcredit':(context) => const PointsCreditPage(),
        '/pointredeem':(context) => const PointsRedeemPage(),
        '/redeemsecondpage':(context) => const RedeemSecondPage(),
        '/orderredeem':(context) => const OrderRedeemPage(),
        '/vieworders':(context) => const ViewOrders(),
        '/transaction':(context) => const TransactionPage(),
        '/transactionpointcredit':(context) => const TransactionCredit(),
        '/transactionpointredeem':(context) => const TransactionRedeem(),
        '/notification':(context) => const NotificationPage(),
        '/notificationdetails':(context) => const NotificationDetails(),
        // '/orderdetails':(context) => OrderDetailsPage(pass_index: null,),
        '/confirmorders':(context) => const ConfirmedOrders(),
        '/cancelorders':(context) => const CancelOrders(),
        '/receiptsubmit':(context) => const ReceiptSubmitPage(),
        '/receiptdetailspage':(context) => const ReceiptDetailsPage(),
        '/receiptapprovel':(context) => const ReceiptApproval(),
        '/tickethistoryopen':(context) => const TicketHistoryOpen(),
        '/tickethistoryclosed':(context) => const TicketHistoryClosed(),
        '/myshoprqcode':(context) => const MYshopQrCode(),
        '/userinformation':(context) => const UserInformation(),
        '/changepassword':(context) => const ChangePassword(),
        'otpverification':(context) => const OtpVerification(),
        '/passwordrest':(context) => const PasswordReset(),
        '/reportpage':(context) => const ReportsPage(),
        '/customreviewandrating':(context)=> const CustomerReviewAndRating(),
        '/viewcustomerreviewlist':(context) => const ViewCustomerReviewList(),
        '/contactus':(context)=> ContactUs(),
        '/termsandcondition':(context)=> TermsAndCondition(),
        '/privacyandpolicy':(context)=> PrivacyAndPolicy(),
        'bottomnavbar':(context)=> const BottomNavBar(),
      },
    );
  }
}
