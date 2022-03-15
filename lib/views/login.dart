import 'package:flutter/material.dart';
import 'package:flutter_app/routes/route.dart' as route;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text("Hello\nWelcome Back",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "EMAIL",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: const <Widget>[
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(
                                color: Color(0xff888888), fontSize: 15)),
                      ),
                      Text("SHOW",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: onSignInClicked,
                      child:
                          const Text("SIGN IN", style: TextStyle(fontSize: 16)),
                      style: const ButtonStyle()),
                ),
              ),
              SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, route.registerPage);
                        },
                        child: const Text("NEW USER? SIGN UP",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff888888))),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, route.forgotPasswordPage);
                        },
                        child: const Text("FORGOT PASSWORD",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff888888))),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked() {
    Navigator.pushNamed(context, route.homePage);
  }
}
