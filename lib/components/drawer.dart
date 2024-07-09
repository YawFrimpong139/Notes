import 'package:flutter/material.dart';
import 'package:notes/components/drawer_tile.dart';
import 'package:notes/pages/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // head title
          const DrawerHeader(child: Icon(Icons.edit)),

          const SizedBox(
            height: 25,
          ),

          // notes tile
          MyDrawerTile(
            title: "Notes",
            leading: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          // settings tile
          MyDrawerTile(
            title: "Settings",
            leading: const Icon(Icons.settings),
            onTap: () {
              // pop the drawer
              Navigator.pop(context);

              // navigate to the settings page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
