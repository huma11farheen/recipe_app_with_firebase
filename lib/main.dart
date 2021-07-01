import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/views/fav_list.dart';
import 'package:flutter_recipe_app/views/save_recipe.dart';
import 'package:flutter_recipe_app/views/search_recipe_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = <Widget>[
    SearchPopular(),
    FavListPage(),
    SaveRecipe()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex), //New
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped, // this will be set when a new tab is tapped
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant, color: Colors.orangeAccent),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Colors.orangeAccent),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save, color: Colors.orangeAccent),
              label: '',
            )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
