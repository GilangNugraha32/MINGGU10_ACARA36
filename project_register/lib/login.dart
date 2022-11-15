import 'package:flutter/material.dart';
import 'package:project_register/home.dart';
import 'package:project_register/register.dart';

class LoginMyApp extends StatefulWidget {
  const LoginMyApp({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.amber[100], shape: BoxShape.circle),
              child: Center(
                  child: Icon(
                Icons.person,
                size: 50,
                color: Colors.black87,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " LOGIN  ",
              style: TextStyle(fontSize: 22, color: Colors.black87),
            ),
            SizedBox(
              height: 125,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 22,
                  ),
                  hintText: "Type your Email Account",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: " Email ",
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 22,
                  ),
                  hintText: "Type your Password Account",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: " Password ",
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.amber[100],
              elevation: 15,
              child: Container(
                height: 40,
                child: InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MyApp())));
                  },
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(fontSize: 17, color: Colors.black87),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Belum Terdaftar ? ",
              style: TextStyle(fontSize: 16, color: Colors.black87,),
             
            ),
            Card(
              color: Colors.amber[100],
              elevation: 15,
              child: Container(
                height: 40,
                child: InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const RegisterMyApp())));
                  },
                  child: Center(
                      child: Text(
                    "Register",
                    style: TextStyle(fontSize: 17, color: Colors.black87),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
