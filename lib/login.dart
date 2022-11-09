import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:bills_bid/register.dart';
import 'package:bills_bid/resetPassword.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";

  _validaCampo() {
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    /*if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length >= 6) {
        /*FirebaseAuth auth = FirebaseAuth.instance;
        auth
            .signInWithEmailAndPassword(email: email, password: senha)
            .then((value) => {
                  print("${value.toString()}"),
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()),
                      (route) => false)
                });*/
        _teste();
      }*/
    if (email == "userteste@email.com" && senha == "a!123456") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const NavigationSystemC()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
      );
    } else {
      setState(() {
        _mensagemErro = "Password or email are incorrect!";
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/green_template.png"),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14, top: 40),
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            '< BACK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 230, top: 40),
                      child: Image.asset("images/new-logo.png")),
                ]),
                Padding(
                    padding: EdgeInsets.only(top: 400, left: 20, right: 20),
                    child: Form(
                        child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 17),
                            child: Image.asset("images/billsBid.png"),
                          )
                        ],
                      ),
                      TextField(
                        controller: _controllerEmail,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          fillColor: Colors.white,
                          hintText: "Login",
                          hintStyle: TextStyle(color: Color(0xFFBEBEBE)),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: TextField(
                          controller: _controllerSenha,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            fillColor: Colors.white,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xFFBEBEBE)),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18)),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18)),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]))),
                Center(
                  child: Text(
                    _mensagemErro,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 58),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  primary: Color(0xFF607C4B),
                                  elevation: 5,
                                  shadowColor: Color(0xFF7BC144),
                                  fixedSize: const Size(162.17, 40.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(18),
                                          bottomLeft: Radius.circular(18),
                                          bottomRight: Radius.circular(18)))),
                              onPressed: () {
                                _validaCampo();
                              },
                              child: const Text("LOGIN",
                                  style: TextStyle(
                                    fontFamily: "Arial",
                                    fontSize: 18,
                                    color: Colors.white,
                                  ))),
                        ),
                        InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()));
                          },
                        )
                      ],
                    )),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 58, top: 4),
                      child: Text(
                        "Doesn't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, top: 4),
                        child: Text(
                          'Sign Up here',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
