import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/green_template.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 300, top: 40),
                        child: Image.asset("images/new-logo.png")),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, bottom: 0, right: 150, top: 140),
                      child: Column(
                        children: [
                          Text(
                            "FORGOT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
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
                            "PASSWORD",
                            style: TextStyle(
                              color: Color.fromARGB(255, 96, 124, 75),
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 145)),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        fillColor: Colors.white,
                        hintText: "E-mail",
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
                      padding: EdgeInsets.only(left: 5, top: 28),
                      child: Column(
                        children: [
                          Text(
                            "Enter your email address to retrieve your",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "password",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(padding: (EdgeInsets.only(left: 5))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 23),
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
                                      const ResetPassword()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                            );
                          },
                          child: const Text("RESET PASSWORD",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
