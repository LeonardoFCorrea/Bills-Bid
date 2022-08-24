import 'package:bills_bid/home.dart';
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
        body: Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage("images/login-1.png"),
      //   fit: BoxFit.cover,
      // )),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BILLS ",
                            style: TextStyle(color: Colors.black, fontSize: 36),
                          ),
                          Text(
                            "BID",
                            style: TextStyle(
                                color: Color(0xFF7BC144), fontSize: 36),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Form(
                        child: Column(children: [
                      TextFormField(
                        autofocus: true,
                        style: new TextStyle(color: Colors.black, fontSize: 20),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7BC144))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7BC144))),
                            prefixIcon: Image.asset("images/e-mail-icon.png",
                                width: 16, height: 20),
                            hintText: "Email",
                            labelStyle: TextStyle(color: Color(0xFF7BC144))),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 47),
                          child: TextFormField(
                            autofocus: true,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF7BC144))),
                                focusedErrorBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0x7BC144))),
                                prefixIcon: Image.asset("images/password.png",
                                    width: 16, height: 20),
                                hintText: "Password",
                                labelStyle:
                                    TextStyle(color: Color(0xFF7BC144))),
                          ))
                    ]))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: GestureDetector(
                        child: Text(
                          'Forgot Password?',
                          style:
                              TextStyle(color: Color(0xFF7BC144), fontSize: 15),
                        ),
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Color(0xFF7BC144),
                          elevation: 5,
                          shadowColor: Color(0xFF7BC144),
                          fixedSize: const Size(267.0, 50.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
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
                          ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 52, top: 15),
                      child: RichText(
                          text: TextSpan(
                              text: 'Don’t have an account??',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 55, top: 15),
                      child: GestureDetector(
                        child: Text(
                          'Sign Up',
                          style:
                              TextStyle(color: Color(0xFF7BC144), fontSize: 15),
                        ),
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
