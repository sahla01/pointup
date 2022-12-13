
import 'package:flutter/material.dart';
import 'package:pointup/screens/Tickets/ticketspage.dart';
import 'package:pointup/screens/counter/counterpage.dart';
import 'package:pointup/screens/orders/orderspage.dart';
import 'package:pointup/screens/receiptsubmit/receiptsubmitpage.dart';
import 'package:svg_icon/svg_icon.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CounterPage(),
    OrdersPage(),
    ReceiptSubmitPage(),
    TicketsPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:SvgIcon("assets/icons/hom.svg"),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon("assets/icons/orders.svg",),
            label: 'Order’s',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon("assets/icons/receipt.svg"),
            label: 'Receipt Submit',
          ),
          BottomNavigationBarItem(
            icon:SvgIcon("assets/icons/ticket.svg"),
            label: 'Tickets',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffF99F1E),
        unselectedItemColor: const Color(0xffA3A3B8),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        onTap: _onItemTapped,
      ),
    );
  }
}

