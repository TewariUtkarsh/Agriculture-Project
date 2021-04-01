import 'package:flutter/material.dart';
import 'package:practice0/list_dummy.dart';
import 'package:practice0/Search.dart';
import 'package:practice0/main.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(title: '',),
    Text('Profile'),
    Text('Result'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: (){
            showSearch(context: context, delegate: _search());
          }, icon: Icon(Icons.search),)
        ],

        backgroundColor: Colors.green,
        title: Text('AGRI CARE'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PROFILE'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('RESULT'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}


class _search extends SearchDelegate<items>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {},)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){},);
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = loaditems();
    return ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index){
          final items listitem = myList[index];
          return ListTile(title: Text(listitem.title),);
        });
  }

}