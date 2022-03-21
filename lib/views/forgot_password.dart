import 'package:flutter/material.dart';
import 'package:flutter_app/routes/route.dart' as route;

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

//hihi
///hihi2
//haha2
class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                child: Text("Forgot your password?",
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
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: onForgotClicked,
                      child:
                          const Text("SUBMIT", style: TextStyle(fontSize: 16)),
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
                          Navigator.pushNamed(context, route.loginPage);
                        },
                        child: const Text("SIGN IN",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff888888))),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, route.registerPage);
                        },
                        child: const Text("SIGN UP",
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

  void onForgotClicked() {
    Navigator.pushNamed(context, route.homePage);
  }
}
