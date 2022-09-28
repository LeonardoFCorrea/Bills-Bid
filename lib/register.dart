import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/registerNew.png"),
                fit: BoxFit.cover)),
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
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 45),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 65)),
                      TextFormField(
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
                              decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              fillColor: Colors.white,
                              hintText: "UserName",
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              fillColor: Colors.white,
                              hintText: "Email Address",
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              fillColor: Colors.white,
                              hintText: "Birth Date",
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              fillColor: Colors.white,
                              hintText: "Phone",
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
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
                      Padding(padding: EdgeInsets.only(top: 22)),
                      TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              fillColor: Colors.white,
                              hintText: "Confirm Password",
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
                      padding: EdgeInsets.only(top: 18),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Color(0xFF607C4B),
                              elevation: 5,
                              shadowColor: Color(0xFF7BC144),
                              fixedSize: const Size(266, 39),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(18),
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18)))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                    const Register()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                            );
                          },
                          child: const Text("CREATE ACCOUNT",
                              style: TextStyle(
                                fontFamily: "Arial",
                                fontSize: 18,
                                color: Colors.white,
                              ))),
                    ),
                    Padding(
                    padding: EdgeInsets.only(left: 50, top: 8),
                    child: Row(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15),
                            ),
                            Padding(
                            padding:(EdgeInsets.only(left: 5))
                          ),
                            Text(
                              "Sing Up",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 32, 61, 9),
                                  fontSize: 15),
                            ), 
                          ],
                          
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
