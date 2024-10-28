import 'package:flutter/material.dart';
import 'package:mbooking_app/home_page.dart';
import 'package:mbooking_app/movie.dart';
import 'package:mbooking_app/profile.dart';
import 'package:mbooking_app/ticket.dart';
// import 'package:smartfarm/View/community_screen.dart';
// import 'package:smartfarm/View/profile_screen.dart';
// import 'package:smartfarm/View/shop_screen.dart';
// import 'home_screen.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({super.key});

  @override
  State<AppNavigationScreen> createState() => _AppNavigationScreenState();
}

class _AppNavigationScreenState extends State<AppNavigationScreen> {
  int _selectedIndex = 0; // Current index of the selected button
  final PageController _pageController =
      PageController(); // Page controller to manage PageView

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
    _pageController.jumpToPage(index); // Jump to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController, // Connect the PageController
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
        children: const [
          HomePage(), // home Screen
          Ticket(), // First Screen
          Movie(), // First Screen
          Profile(), // First Screen
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color.fromARGB(255, 207, 233, 230),
          // labelTextStyle: WidgetStatePropertyAll(TextStyle(fontSize: 12.5)),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Color.fromARGB(255, 3, 110, 100),
                  fontSize: 13.5,
                  fontWeight: FontWeight.w500,
                ); // Selected label style
              }
              return const TextStyle(
                // fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 113, 113, 113),
                fontSize: 13,
              ); // Unselected label style
            },
          ),
          // Set different icon styles based on their state
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(
                    color: Color.fromARGB(
                        255, 3, 110, 100)); // Selected icon color
              }
              return const IconThemeData(
                  color:
                      Color.fromARGB(255, 81, 81, 81)); // Unselected icon color
            },
          ),
        ),
        child: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 233, 242, 241),
          onDestinationSelected: _onItemTapped,
          selectedIndex: _selectedIndex,

          // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          //animationDuration: Duration(seconds: 1),
          destinations: const [
            NavigationDestination(
              //selectedIcon: Icon(Icons.abc),
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              //selectedIcon: Icon(Icons.abc),
              icon: Icon(Icons.message_outlined),
              label: "Community",
            ),
            NavigationDestination(
              //selectedIcon: Icon(Icons.abc),
              icon: Icon(Icons.storefront_outlined),
              label: "Shop",
            ),
            NavigationDestination(
              //selectedIcon: Icon(Icons.home_filled),
              icon: Icon(Icons.person_2_outlined),
              label: "You",
            )
          ],
        ),
      ),
    );
  }
}