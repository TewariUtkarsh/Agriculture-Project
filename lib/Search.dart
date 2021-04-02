import 'package:flutter/material.dart';
import 'package:practice0/list_dummy.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: (){
            showSearch(context: context, delegate: _search());
          }, icon: Icon(Icons.search),)
        ],
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