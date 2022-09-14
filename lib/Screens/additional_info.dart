import 'package:dukaan_ui/Screens/Widgets/listtile.dart';
import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text('Additional Information'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  listtile(
                    icon: Icons.share,
                    title: "Share Dukaan App",
                    trailIcon: Icons.arrow_forward_ios,
                  ),
                  listtile(
                    icon: Icons.email,
                    title: "Change Language",
                    trailIcon: Icons.arrow_forward_ios,
                  ),
                  ListTile(
                    leading: const Icon(Icons.whatsapp),
                    title: const Text('Whatsapp Chat Support'),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.blue,
                    ),
                  ),
                  listtile(
                    icon: Icons.lock,
                    title: "Privacy Policy",
                  ),
                  listtile(
                    icon: Icons.star_outline,
                    title: "Rate Us",
                  ),
                  listtile(
                    icon: Icons.exit_to_app,
                    title: "Sign Out",
                  ),
                ],
              ),
              SizedBox(
                height: 380,
              ),
              Column(
                children: [
                  Center(
                      child: Text(
                    'version\n\t\t2.4.2',
                    style: TextStyle(color: Colors.grey[400]),
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
