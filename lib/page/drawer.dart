
import 'package:flutter/material.dart';

class DrawerD extends StatelessWidget {
  const DrawerD({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[400],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[400]),
            child: Row(
              children: [
                Icon(Icons.local_dining, color: Colors.white, size: 28),
                SizedBox(width: 10),
                Text('Xender', style: TextStyle(color: Colors.white, fontSize: 24)),
              ],
            )
          ),
          const ListTile(leading: Icon(Icons.language), title: Text('Language')),
          ListTile(
            leading: const Icon(Icons.speed),
            title: const Text('High-speed Mode supported'),
            trailing: const Icon(Icons.check, color: Colors.green),
          ),
          const ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          SwitchListTile(
            value: true,
            onChanged: (bool value) {},
            secondary: const Icon(Icons.nightlight_round),
            title: const Text('Night mode'),
          ),
          const ListTile(
            leading: Icon(Icons.settings_applications, color: Colors.green),
            title: Text('Mi Phone Settings'),
          ),
          const ListTile(leading: Icon(Icons.help_outline), title: Text('Help & Feedback')),
          const ListTile(
              leading: Icon(Icons.star, color: Colors.green),
              title: Text('Ratings'),
              subtitle: Row(children: [
                Icon(Icons.star, color: Colors.green, size: 16),
                Icon(Icons.star, color: Colors.green, size: 16),
                Icon(Icons.star, color: Colors.green, size: 16),
                Icon(Icons.star, color: Colors.green, size: 16),
                Icon(Icons.star_border, color: Colors.green, size: 16),
              ])),
          const ListTile(leading: Icon(Icons.info_outline), title: Text('About')),
        ],
      ),
    );
  }
}