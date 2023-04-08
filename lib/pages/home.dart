import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_web/tabs/about_tab.dart';
import 'package:flutter_web/tabs/projects_tab.dart';
import 'package:flutter_web/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[    AboutTab(),    ProjectsTab(),  ];

  @override
  void initState() {
    super.initState();

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          // IconButton(
          //   icon: ThemeSwitcher.of(context).isDarkModeOn
          //       ? Icon(Icons.wb_sunny)
          //       : Image.asset(Config().get('moon'), height: 20, width: 20,),
          //   onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          // )
        ],
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: Text('About').toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: Text('Projects').toString(),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
