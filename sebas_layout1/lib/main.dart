import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // the builder
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Copy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(10), //borde dela parte de arriba
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.02),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.blueAccent),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Search Settings',
                          style: TextStyle(color: Colors.black45, fontSize: 16),
                        ),
                      ),
                    ),

                    //create the cricle inside the container
                    const SizedBox(width: 12),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/goku.jpeg'),
                      //backgroundColor: Colors.orange,
                      //child: const Text('RC'),
                    ),
                  ],
                ),
              ),
            ),

            //list the options
            Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  children: [
                    settingsItems(
                        icon: Icons.wifi,
                        iconBgr: Colors.blue,
                        title: 'Network & internet',
                        subtitle: 'Wi-Fi, mobile, data usage, and hotspot'
                    ),
                    settingsItems(
                        icon: Icons.devices,
                        iconBgr: Colors.green,
                        title: 'Connected devices',
                        subtitle: 'Bluetooth, Android Auto, driving mode, NFC'
                    ),
                    settingsItems(
                        icon: Icons.apps,
                        iconBgr: Colors.deepOrange,
                        title: 'Apps & notifications',
                        subtitle: 'Assistant, recent apps, default apps'
                    ),
                    settingsItems(
                        icon: Icons.battery_full,
                        iconBgr: Colors.teal,
                        title: 'Battery',
                        subtitle: '89% - About 1 day, 6 hr left'
                    ),
                    settingsItems(
                        icon: Icons.display_settings,
                        iconBgr: Colors.orange,
                        title: 'Display',
                        subtitle: 'Styles, wallpapers, screen timeout, font size'
                    ),
                    settingsItems(
                        icon: Icons.volume_up,
                        iconBgr: Colors.tealAccent,
                        title: 'Sound',
                        subtitle: 'Volume, vibration, Do Not Disturb'
                    ),
                    settingsItems(
                        icon: Icons.sd_storage,
                        iconBgr: Colors.purple,
                        title: 'Storage',
                        subtitle: '20% used - 103 GB free'
                    ),
                    settingsItems(
                        icon: Icons.privacy_tip,
                        iconBgr: Colors.blue.shade200,
                        title: 'Privacy',
                        subtitle: 'Permissions, account activity, personal data'
                    ),
                    settingsItems(
                        icon: Icons.location_on,
                        iconBgr: Colors.cyan,
                        title: 'Location',
                        subtitle: 'Off'
                    ),
                    settingsItems(
                        icon: Icons.lock,
                        iconBgr: Colors.green,
                        title: 'Security',
                        subtitle: 'Play Protect, screen lock, fingerprint'
                    ),

                  ],
                )
            ),


          ],
        ),
      ),
    );
  }
  Widget settingsItems({
    required IconData icon,
    required Color iconBgr,
    required String title,
    required String subtitle,
}){
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal:16, vertical: 6 ),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: iconBgr,
        child: Icon(icon, color: Colors.white, size: 20),
    ),
        title: Text(title,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 13, color: Colors.black54)),
        onTap: (){
        },
    );
  }

}

