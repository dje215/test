import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;



class Register extends StatefulWidget {
  static String tag = 'register';
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register>{
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'User ID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final repassword = TextFormField(
      autofocus: false,
      obscureText: true,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Retype Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final reg = RaisedButton(
      onPressed: _registerPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      padding: EdgeInsets.all(12),
      color: Colors.orangeAccent,
      child: Text('Register', style: TextStyle(color: Colors.white)),
    );

    final back = FlatButton(
      child: Text(
        'Return to Login',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
    return Scaffold(
      appBar: new AppBar(
        title: Text("Register"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 25.0),
            email,
            SizedBox(height: 17.0),
            password,
            SizedBox(height: 17.0),
            repassword,
            SizedBox(height: 17.0),
            reg,
            back,
          ],
        ),

      ),
    );
  }
}

_registerPressed () async{
  //mongodb+srv://elias:<password>@cluster0-tyc7m.mongodb.net/test?retryWrites=true
  mongo.Db db = new mongo.Db("mongodb://127.0.0.1/PayUp");
  await db.open();
  var coll = db.collection('users');
  await coll.insertAll([{'userid': 'elias2', 'password': 'password2'}]);
}