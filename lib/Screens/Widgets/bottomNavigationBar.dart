import 'package:flutter/material.dart';

Widget bottomNavBar() {
  return BottomNavigationBar(
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    currentIndex: 3,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment_ind),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.grid_view_outlined),
        label: 'Products',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.manage_accounts_rounded),
        label: 'Manage',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Account',
      ),
    ],
  );
}
