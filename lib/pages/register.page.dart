import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/register.png"), fit: BoxFit.cover)),    
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, bottom: 0, right: 150, top: 35),
                          child: Column(
                            children: [
                              Text(
                                "CREATE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 45,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 85, bottom: 0, right: 0, top: 0),
                          child: Column(
                            children: [
                              Text(
                                "ACCOUNT",
                                style: TextStyle(
                                    color: Color(0xFF7BC144), fontSize: 45),
                              )
                            ],
                          ),
                        ),
                        TextFormField(
                          autofocus: false,
                          // Habilita somente numeros// keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Name:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: false,
                          // Habilita somente numeros// keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "UserName:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: false,
                          // Habilita somente numeros// keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Email Address:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Birth Date:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Phone:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: true,
                          // Habilita somente numeros// keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Password:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          autofocus: true,
                          // Habilita somente numeros// keyboardType: TextInputType.number,
                          style:
                              new TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            labelText: "Confirm Password:",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF7BC144),
                                elevation: 5,
                                shadowColor: Color(0xFF7BC144),
                                fixedSize: const Size(267.0, 50.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              print("Página de Register");
                            },
                            child: const Text("CREATE ACCOUNT",
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 18,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
