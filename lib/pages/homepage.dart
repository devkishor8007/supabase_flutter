import 'package:flutter/material.dart';
import 'package:starter_supabase_flutter/widget/draweropen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      drawer: drawerOpen(context),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Hello'),
          ),
          ListTile(
            title: Text('Hy'),
          ),
        ],
      ),
    );
  }

 
}
