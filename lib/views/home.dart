import 'package:flutter/material.dart';
import 'package:flutter_app/routes/route.dart' as route;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("HELLO USERNAME!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, route.loginPage);
                      },
                      child: const Text("SIGN OUT",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 172, 107, 108))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      const TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "WHAT DO YOU WANT TO DO?",
                            labelStyle: TextStyle(
                                color: Color(0xff888888), fontSize: 15)),
                      ),
                      ElevatedButton(
                          onPressed: onSignInClicked,
                          child:
                              const Text("Add", style: TextStyle(fontSize: 16)),
                          style: const ButtonStyle()),
                    ]),
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                          checkColor: Colors.white,
                          value: false,
                          onChanged: onSignInClicked1),
                      const Text("Need to do",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          checkColor: Colors.white,
                          value: false,
                          onChanged: onSignInClicked1),
                      const Text("Need to do",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          checkColor: Colors.white,
                          value: true,
                          onChanged: onSignInClicked1),
                      const Text("Have done",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          checkColor: Colors.white,
                          value: true,
                          onChanged: onSignInClicked1),
                      const Text("Have done",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked() {}
  void onSignInClicked1(boolParams) {}
}
