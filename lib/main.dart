import 'package:flite_klub/view/add_club_screen.dart';
import 'package:flite_klub/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:flite_klub/view/reservations_screen.dart';
import 'package:flite_klub/view/account_screen.dart';
import 'package:flite_klub/view/clubs_screen.dart';
import 'package:flite_klub/view/transitions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'FliteKlub';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final Constants _c = Constants.constants();

  final List<Widget> _widgetOptions = <Widget>[
    ReservationsPage(),
    ClubsPage(),
    AccountPage(),
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
        title: const Text('FliteKlub'),
        backgroundColor: Colors.amber[900],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Reservations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: 'Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      // TODO Floating action button should be different for every screen
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(createRoute(AddClubPage())),
        tooltip: 'Add a Club',
        backgroundColor: _c.mainColor,
        hoverColor: _c.secondaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
