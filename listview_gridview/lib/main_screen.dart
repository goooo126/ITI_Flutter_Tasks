import 'package:flutter/material.dart';
import 'package:listview_gridview/pages/discover_page.dart';
import 'package:listview_gridview/pages/favorite_page.dart';
import 'package:listview_gridview/pages/home_page.dart';
import 'package:listview_gridview/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indexOfCurrentPage = 0;

  final List<Widget> _pages = [
    const ProfilePage(),
    const FavoritePage(),
    const DiscoverPage(),
    const HomePage(),
  ];

  void _onTap(int index) {
    setState(() {
      _indexOfCurrentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_indexOfCurrentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexOfCurrentPage,
        onTap: _onTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابى'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: 'المفضله'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'استكشاف'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
        ],
      ),
    );
  }
}
