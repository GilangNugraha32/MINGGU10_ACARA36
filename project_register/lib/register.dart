import 'package:flutter/material.dart';
import 'package:project_register/home.dart';
import 'package:project_register/login.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class RegisterMyApp extends StatefulWidget {
  const RegisterMyApp({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

void pilihAgama(String value) {
  setState(() {
    var _agama = value;
  });
}

void setState(Null Function() param0) {}

class _RegisterState extends State<RegisterMyApp> {
  bool value = false;
  int val = -1;
  List<String> agama = [
    "Islam",
    "Kristen Protenstan",
    "Hindu",
    "Kristen Katolik",
    "Budha"
  ];

  String _agama = "Islam";

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
              " REGISTER  ",
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
                  hintText: "Type your Full name",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: " Fullname ",
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
                    Icons.mail,
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
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.phone,
                    size: 22,
                  ),
                  hintText: "Type your Number Phone",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: " Number Phone ",
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text("Laki - Laki"),
              leading: Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                activeColor: Colors.black,
              ),
            ),
            ListTile(
              title: Text("Perempuan"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                activeColor: Colors.black,
              ),
            ),
            Row(
              children: <Widget>[
                new Text(
                  "Agama ",
                  style: new TextStyle(fontSize: 17.0, color: Colors.black),
                ),
                new Padding(
                  padding: new EdgeInsets.only(left: 15.0),
                ),
                DropdownButton(
                  onChanged: (String? value) {
                    pilihAgama(value!);
                  },
                  value: _agama,
                  items: agama.map((String value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                )
              ],
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
                            builder: ((context) => const LoginMyApp())));
                  },
                  child: Center(
                      child: Text(
                    "Submit",
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
