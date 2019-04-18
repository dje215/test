import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'register.dart';
import 'forgot.dart';



class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Container(
      child: CircleAvatar(
        //backgroundColor: Colors.transparent,
        radius: 60.0,
        child: Image.asset('assets/logo1.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'User ID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      onSaved: (String pass) {},
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = RaisedButton(
      onPressed: _loginPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
      ),
      padding: EdgeInsets.all(12),
      color: Colors.orangeAccent,
      child: Text('Log In', style: TextStyle(color: Colors.white)),
    );


    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Forgot()),
        );
      },
    );

    final newuser = FlatButton(
      child: Text(
        'Create Account',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Register()),
        );
      },
    );

    return Scaffold(
      appBar: new AppBar(
        title: Text("Login"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 25.0),
            email,
            SizedBox(height: 17.0),
            password,
            SizedBox(height: 17.0),
            loginButton,
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                forgotLabel,
                newuser,
              ],
            )
          ],
        ),
      ),
    );
  }
}

_loginPressed () async {
  /*const url = 'https://google.com';
  if(await canLaunch(url) == true){
    await launch(url);
  }else {
    throw 'could not launch $url';
  }*/
}