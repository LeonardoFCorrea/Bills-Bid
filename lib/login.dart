import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Image.asset(
                      "images/big-logo.png",
                      width: 133,
                      height: 133,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BILLS ",
                          style: TextStyle(color: Colors.black, fontSize: 36),
                        ),
                        Text(
                          "BID",
                          style:
                              TextStyle(color: Color(0xFF7BC144), fontSize: 36),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            autofocus: true,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff7BC144))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff7BC144))),
                                prefixIcon: Image.asset(
                                    "images/e-mail-icon.png",
                                    width: 16,
                                    height: 20),
                                hintText: "Email",
                                labelStyle:
                                    TextStyle(color: Color(0xFF7BC144))),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 47),
                              child: TextFormField(
                                autofocus: true,
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 20),
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF7BC144))),
                                    focusedErrorBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color(0x7BC144))),
                                    prefixIcon: Image.asset(
                                        "images/password.png",
                                        width: 16,
                                        height: 20),
                                    hintText: "Password",
                                    labelStyle:
                                        TextStyle(color: Color(0xFF7BC144))),
                              ))
                        ])),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7BC144),
                            elevation: 5,
                            shadowColor: Color(0xFF7BC144),
                            fixedSize: const Size(267.0, 50.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text("LOGIN",
                            style: TextStyle(
                              fontFamily: "Arial",
                              fontSize: 18,
                              color: Colors.white,
                            )))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
