//  import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:pointup/screens/counter/counterpage.dart';
//
// class BottomNavBar extends StatefulWidget {
//    const BottomNavBar({Key? key}) : super(key: key);
//
//    @override
//    State<BottomNavBar> createState() => _BottomNavBarState();
//  }
//
//  class _BottomNavBarState extends State<BottomNavBar> {
//
//    int _selectedIndex = 0;
//    static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//
//    static const List<Widget> _widgetOptions = <Widget>[
//      CounterPage(),
//      Text(
//        'order',
//        style: optionStyle,
//      ),
//      Text(
//        'receipt',
//        style: optionStyle,
//      ),
//      Text(
//        'Ticket',
//        style: optionStyle,
//      ),
//    ];
//
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        backgroundColor: Colors.white,
//        body: Center(
//          child: _widgetOptions.elementAt(_selectedIndex),
//        ),
//        bottomNavigationBar: Container(
//          decoration: BoxDecoration(
//            color: Colors.white,
//            boxShadow: [
//              BoxShadow(
//                blurRadius: 5,
//                color: Colors.white.withOpacity(.1),
//              )
//            ],
//          ),
//          child: SafeArea(
//            child: Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//              child: GNav(
//                rippleColor: Colors.grey[300]!,
//                hoverColor: Colors.grey[100]!,
//                activeColor: Colors.white,
//                iconSize: 20,
//                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
//                duration: const Duration(milliseconds: 400),
//                tabBackgroundColor: Colors.orange,
//                color: Colors.grey,
//                tabs: const [
//                  GButton(
//                    icon: Icons.home_sharp,
//                    leading:Text("j"),
//                  ),
//                  GButton(
//                    icon: Icons.shopping_basket,
//                    text: 'Orders',
//                  ),
//                  GButton(
//                    icon: Icons.receipt_long_outlined,
//                    text: 'Receipt Submit',
//                  ),
//                  GButton(
//                    icon: Icons.airplane_ticket_sharp,
//                    text: 'Tickets',
//                  ),
//                ],
//                selectedIndex: _selectedIndex,
//                onTabChange: (index) {
//                  setState(() {
//                    _selectedIndex = index;
//                  });
//                },
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }
import 'package:flutter/material.dart';
import 'package:pointup/screens/counter/counterpage.dart';
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
    Text(
      'Order’s',
    ),
    Text(
      'Receipt Submit',
    ),
    Text(
      'Tickets',
    ),
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

