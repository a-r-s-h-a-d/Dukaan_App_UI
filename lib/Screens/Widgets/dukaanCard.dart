import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class dukaancard extends StatelessWidget {
  const dukaancard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: const [
            SizedBox(height: 5),
            Image(image: AssetImage('assets/images/dukaan.png'), width: 150),
            SizedBox(height: 2),
            Text(
              'Get Dukaan  Premimum for just',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              '₹ 4,999/year',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'All the advanced features for scaling your',
              style: TextStyle(
                  color: Color.fromARGB(215, 192, 189, 189),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'business',
              style: TextStyle(
                  color: Color.fromARGB(215, 192, 189, 189),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
