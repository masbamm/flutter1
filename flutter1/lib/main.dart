import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
        ),
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 270),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white70,
                                ),
                                hintText: "Username"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.white70,
                              ),
                              hintText: "Password",
                            ),
                          ),
                          FlatButton(
                            padding:
                                const EdgeInsets.only(top: 100.0, bottom: 30.0),
                            onPressed: null,
                            child: Text(
                              "Ga Punya Akun ?  Buat Disini",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                new SignIn()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(75.0),
      child: Container(
        alignment: FractionalOffset.center,
        width: 250.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.all(
            const Radius.circular(30.0),
          ),
        ),
        child: Text(
          "Sign In",

          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4

          ),
        ),
      ),
    );
  }
}
