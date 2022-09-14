import 'package:flutter/material.dart';

Widget listtile(
    {required IconData icon, required String title, IconData? trailIcon}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    trailing: Icon(trailIcon),
  );
}
