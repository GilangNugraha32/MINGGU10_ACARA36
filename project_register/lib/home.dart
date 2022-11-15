import 'package:flutter/material.dart';
import 'package:project_register/login.dart';
import 'package:project_register/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 205,
            color: Colors.blue,
            alignment: Alignment.bottomLeft,
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Gilang Nugraha Restu Putra'),
                  accountEmail: Text('gilang32nugraha@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("img/gambar1.jpg")),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(
              Icons.web_asset,
            ),
            title: Text(
              'Home ',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.group,
            ),
            title: Text(
              'Register',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Divider(
            height: 10,
          ),
          SizedBox(
            height: 16,
          ),
          ListTile(
            leading: Icon(
              Icons.door_front_door_outlined,
            ),
            title: Text(
              'Log out',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const LoginMyApp())));
            },
          )
        ]),
      ),
      body: Center(
          child: Text(
        'Selamat Datang ',
        style: TextStyle(
          fontSize: 30,
        ),
      )),
    );
  }
}
