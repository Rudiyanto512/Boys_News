import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("News Boys"),
        
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountEmail: Text('muhammadrudiyanto020@gmail.com'),
                accountName: Text('Muhammad Rudiyanto'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Profile'),
              leading: CircleAvatar(
                child: Icon(Icons.account_box),
              ),
          
            )
          ],
        ),
      ),
      
      body: Center(
        child: Text("News Boys")
        ),
    );
  }
}