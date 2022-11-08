import 'package:bills_bid/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerRepetirSenha = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  String _mensagemErro = "";

  _teste() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  _validaCampos() {
    //recupera dados dos campos
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    String phone = _controllerPhone.text;
    String repetirSenha = _controllerRepetirSenha.text;
    if (nome.isNotEmpty) {
      if (email.isNotEmpty && email.contains("@")) {
        if (phone.isNotEmpty && phone.length >= 10) {
          if (senha.isNotEmpty && senha.length >= 6) {
            if (senha == repetirSenha) {
              //_teste();
              _cadastraUsuario(nome, email, senha, phone);
            } else {
              setState(() {
                _mensagemErro = "The passwords must match!";
              });
            }
          } else {
            setState(() {
              _mensagemErro = "Password must be at least 6 characters long!";
            });
          }
        } else {
          setState(() {
            _mensagemErro =
                "The phone number must contain at least 10 numbers!";
          });
        }
      } else {
        setState(() {
          _mensagemErro = "Fill in the email correctly!";
        });
      }
    } else {
      setState(() {
        _mensagemErro = "Fill in your name correctly!";
      });
    }
  }

  _cadastraUsuario(String nome, String email, String senha, String cpf) {
    FirebaseDatabase db = FirebaseDatabase.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    //db.reference().child("usuarios").child("alksjdlaksjlkasjfkl").set({"nome" : "Gustavo", "email" : "gus"});

    Map<String, dynamic> dadosUsers = {
      'nome': nome,
      'email': email,
      'cpf': cpf,
    };

    auth
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((firebaseUser) => {
              //alem disso seta os dados do usuario no banco realtime
              db.ref("usuarios").child(firebaseUser.user!.uid).set(dadosUsers),
              _mensagemErro = "Sucesso ao cadastrar!",
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false)
            })
        .catchError((error) {
      setState(() {
        _mensagemErro = "Something went wrong..., $error";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        height: double.infinity,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/green_template.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
                              Navigator.pop(
                                context,
                              );
                            },
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 230, top: 40),
                          child: Image.asset("images/new-logo.png")),
                    ]),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, bottom: 0, right: 150),
                      child: Column(
                        children: [
                          Text(
                            "CREATE",
                            style: TextStyle(
                              color: Colors.white,
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
                              color: Color(0xFF607C4B),
                              fontSize: 45,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 22)),
                    TextField(
                      controller: _controllerNome,
                      keyboardType: TextInputType.name,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        fillColor: Colors.white,
                        hintText: "Username",
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
                    TextField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
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
                    TextField(
                      controller: _controllerPhone,
                      keyboardType: TextInputType.phone,
                      autocorrect: false,
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
                    TextField(
                      controller: _controllerSenha,
                      keyboardType: TextInputType.visiblePassword,
                      autocorrect: false,
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
                    TextField(
                      controller: _controllerRepetirSenha,
                      keyboardType: TextInputType.visiblePassword,
                      autocorrect: false,
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
                            _validaCampos();
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterPage()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                            );*/
                          },
                          child: const Text("CREATE ACCOUNT",
                              style: TextStyle(
                                fontFamily: "Arial",
                                fontSize: 18,
                                color: Colors.white,
                              ))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 58, top: 8),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(padding: (EdgeInsets.only(left: 5))),
                          InkWell(
                            child: Text(
                              'Sign In here',
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        _mensagemErro,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
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
