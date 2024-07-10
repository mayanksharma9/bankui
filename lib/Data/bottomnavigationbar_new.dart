import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Cards')),
    Center(child: Text('Pay')),
    Center(child: Text('Rewards')),
    Center(child: Text('Shop')),
    Center(child: Text('More')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0 ? 'assets/icons/home_active.png' : 'assets/icons/home_inactive.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1 ? 'assets/icons/cards_active.png' : 'assets/icons/cards_inactive.png',
              width: 24,
              height: 24,
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 2 ? 'assets/icons/pay_active.png' : 'assets/icons/pay_inactivee.png',
              width: 24,
              height: 24,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 3 ? 'assets/icons/rewards_active.png' : 'assets/icons/rewards_inactive.png',
              width: 24,
              height: 24,
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 4 ? 'assets/icons/shop_active.png' : 'assets/icons/shop_inactive.png',
              width: 24,
              height: 24,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 5 ? 'assets/icons/more_active.png' : 'assets/icons/more_inactive.png',
              width: 24,
              height: 24,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
