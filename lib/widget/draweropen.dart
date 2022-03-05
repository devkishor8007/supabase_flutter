import 'package:flutter/material.dart';
import 'package:starter_supabase_flutter/supabase.config/supabase.service.dart';
import '../pages/index.dart';

Drawer drawerOpen(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const UserAccountsDrawerHeader(
          arrowColor: Colors.red,
          accountName: Text("test"),
          accountEmail: Text("test@gmail.com"),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Profile'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AccountPage(),
              ),
            );
          },
        ),
        ListTile(
          trailing: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            SupabaseService().signOut(context);
          },
        ),
      ],
    ),
  );
}
