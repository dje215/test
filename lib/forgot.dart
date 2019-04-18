import 'package:flutter/material.dart';
import 'login_page.dart';



class Forgot extends StatefulWidget {
  static String tag = 'register';
  @override
  _ForgotState createState() => new _ForgotState();
}

class _ForgotState extends State<Forgot>{
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'User ID or Email',
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
      child: Text('Get Password', style: TextStyle(color: Colors.white)),
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
        title: Text("Forgot Password"),
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
            reg,
            SizedBox(height: 17.0),
            back,
          ],
        ),

      ),
    );
  }
}

_registerPressed () async{

}