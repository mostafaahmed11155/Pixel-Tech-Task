import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pixel_tech_task/view/bills/bills.dart';

import '../utils/colors.dart';
import '../view/home/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Bills(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          color: white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10,top: 12, bottom: 8),
          child: GNav(
            gap: 10,
            activeColor: Colors.white,
            backgroundColor: Colors.transparent,
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
            tabBackgroundColor: Colors.blueGrey,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 500),
            tabs: const [
              GButton(
                icon: FontAwesomeIcons.house,
                text: 'الرئيسية',
                iconColor: Colors.grey,
              ),
              GButton(
                icon: FontAwesomeIcons.moneyBills,
                text: 'الفواتير',
                iconColor: Colors.grey,
                iconSize: 25,
              ),
              GButton(
                icon: FontAwesomeIcons.facebookMessenger,
                text: 'المحادثة',
                iconColor: Colors.grey,
                iconSize: 25,
              ),
              GButton(
                icon: FontAwesomeIcons.solidUser,
                text: 'الملف الشخصي',
                iconColor: Colors.grey,
                iconSize: 25,
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
