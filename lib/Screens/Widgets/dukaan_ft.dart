import 'package:flutter/material.dart';

Widget features(
    {required IconData icon, required String title, required String Subtitle}) {
  return ListTile(
    leading: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 2)),
      child: CircleAvatar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        radius: 30,
        child: Icon(icon),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      Subtitle,
      style: TextStyle(fontSize: 12),
    ),
  );
}

//ExpansionTile

Widget expansionTile({required String title, required String subtitle}) {
  return ExpansionTile(
    trailing: Icon(Icons.add),
    title: Text(
      title,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(subtitle),
          ),
        ],
      )
    ],
  );
}

//Contact Box
Widget conatctBox({required String title, required IconData icon}) {
  return Container(
    height: 70,
    width: 150,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        Text(
          title,
        ),
      ],
    ),
  );
}
