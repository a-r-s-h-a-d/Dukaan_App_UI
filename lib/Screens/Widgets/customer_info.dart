import 'dart:ui';

import 'package:flutter/material.dart';

Widget itemdetails({required String title1, required String title2}) {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title1),
            SizedBox(width: 125),
            Text(title2),
          ],
        ),
      ],
    ),
  );
}

Widget customerinfo() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'CUSTOMER DETAILS',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(width: 80),
          Icon(Icons.share, color: Colors.blue),
          Text(
            'SHARE',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
      const SizedBox(height: 15),
      Column(
        children: [
          Row(
            children: const [
              Text(
                'Deepa',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: const [
              Text('+91-7829000484'),
              SizedBox(width: 128),
              Icon(
                Icons.phone,
                color: Colors.blue,
                size: 35,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.whatsapp,
                color: Colors.green,
                size: 35,
              )
            ],
          ),
        ],
      ),
      const SizedBox(height: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 285.0),
            child: Text(
              'Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Text('D 1101 Charted Beverly'),
          const Text('Hills,Subramanyapura P.O'),
          const SizedBox(height: 20),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly
            children: const [
              Text(
                'City',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 150),
              Text(
                'pincode',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly
            children: const [
              Text('Bangalore'),
              SizedBox(width: 100),
              Text('560061'),
            ],
          ),
          const Text(
            '\nPayment',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Online'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: const Color.fromARGB(255, 181, 240, 183),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                  child: Text(
                    ' PAID',
                    style: TextStyle(color: Color.fromARGB(255, 34, 140, 38)),
                  ),
                ),
              )
            ],
          )
        ],
      )
    ],
  );
}

//Additional Info
Widget additionalinfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Divider(thickness: 1.5),
      SizedBox(height: 8),
      Text(
        'ADDITIONAL INFORMATION',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 8),
      Text(
        'state',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('Karnataka\n'),
      Text(
        'Email',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('greeniceaqua@gmail.com'),
    ],
  );
}
