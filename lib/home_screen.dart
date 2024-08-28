import 'package:flutter/material.dart';
import 'package:navigation_in_flutter/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = ' home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Navigation Darwer')),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764adc)),
                accountName: Text(
                  "Isabella",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "isabellagoldsmith6@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            const ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text('Screen Two'),
            ),
            const ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Paint'),
            ),
            const ListTile(
              leading: Icon(Icons.mood),
              title: Text('ha-ha'),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    //below is routes code
                    Navigator.pushNamed(context, ScreenTwo.id);
                    //Below is navigator code
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const ScreenTwo()));
                  },
                  child: const Text(
                    'Screen 1',
                  )))
        ],
      ),
    );
  }
}
