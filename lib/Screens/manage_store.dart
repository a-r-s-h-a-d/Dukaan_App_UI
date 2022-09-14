import 'package:dukaan_ui/Screens/Widgets/box_store.dart';
import 'package:dukaan_ui/Screens/additional_info.dart';
import 'package:dukaan_ui/Screens/dukaan_premium.dart';
import 'package:dukaan_ui/Screens/payments.dart';
import 'package:flutter/material.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({Key? key}) : super(key: key);

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 226, 226),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage Store'),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdditionalInformation())),
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.5,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dukaan())),
              child: BoxStore(
                color: Colors.red,
                icon: Icons.volume_up,
                text: 'Marketing Design',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Payments()));
              },
              child: BoxStore(
                color: Colors.greenAccent,
                icon: Icons.currency_rupee,
                text: 'Online Payments',
              ),
            ),
            BoxStore(
              color: Colors.orangeAccent,
              icon: Icons.discount,
              text: 'Discount Coupons',
            ),
            BoxStore(
              color: Colors.greenAccent,
              icon: Icons.group,
              text: 'My Customers',
            ),
            BoxStore(
              color: Colors.grey,
              icon: Icons.qr_code_scanner,
              text: 'Store QR Code',
            ),
            BoxStore(
              color: Color.fromARGB(255, 79, 10, 217),
              icon: Icons.payment,
              text: 'Extra Charges',
            ),
            BoxStore(
              color: Colors.purple,
              icon: Icons.format_align_left,
              text: 'Order\nForm',
              trailing: Container(
                height: 20,
                width: 40,
                child: Center(
                  child: Text(
                    'NEW',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue.shade700,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.request_page_sharp,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.layers,
                ),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
  }
}
