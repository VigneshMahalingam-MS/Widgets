import 'package:drawer_demo/toggel_button.dart';
import 'package:drawer_demo/widget_dialog.dart';
import 'package:drawer_demo/widget_showmodelbottomsheet.dart';
import 'package:drawer_demo/widget_snackbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const WidgetDialog(),
    const WidgetShowmodelbottomsheet(),
    const ToggelButton(),
    const WidgetSnackbar(),
  
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Widgets"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.green),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.green),
                accountName: const Text(
                  "Vignesh M",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: const Text("vignesh51268@gmail.com"),
                currentAccountPictureSize: const Size.square(40),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.green[100],
                  child: const Text(
                    "V",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("My Course"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text("Go premium"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                }),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.green,
              thickness: 2,
            )
          ],
        ),
      ),
      body:Center(
         child: _widgetOptions.elementAt(_selectedIndex),
      ),   
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Profile")
        ],
        backgroundColor: Colors.green,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
