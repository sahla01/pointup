import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/orders/activeorders.dart';
import 'package:pointup/screens/orders/redeemorders.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:pointup/widgets/customdrwer.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  TabController? _tabcontroller;


  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Center(
          child: AppText(
            text: "Order’s",
            color: Colors.white,
            size: 16,
            fw: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/notification');
              },
              child: Image.asset("assets/images/noti.png")),
        ],
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      drawer: const CustomDrwer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      4,
                    ),
                    topLeft: Radius.circular(4)),
              ),
              child: TabBar(
                controller: _tabcontroller,
                labelColor: const Color(0xff340E6E),
                unselectedLabelColor: const Color(0xffDADADA),
                indicator: const BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 1, color: Color(0xff340E6E)),
                      right: BorderSide(width: 1, color: Color(0xff340E6E)),
                      top: BorderSide(width: 1, color: Color(0xff340E6E)),
                      bottom: BorderSide(width: 1.5, color: Color(0xffF99F1E))),
                ),
                tabs: const [
                  Tab(
                    text: 'Redeem Order’s',
                  ),
                  Tab(
                    text: 'Active Order’s',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                children: const [
                  RedeemOrders(),
                  ActiveOrders(),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
