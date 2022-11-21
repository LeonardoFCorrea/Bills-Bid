import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bills_bid/login.dart';
import 'package:bills_bid/register.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int activeIndex = 0;
int i = 0;

class _HomeState extends State<Home> {
  var FruitList = [
    'Notifications in real time about friends, groups or system activity',
    'Grapes',
    'Apple'
  ];

  @override
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
            padding: EdgeInsets.all(0),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/billsBid.png"),
                        Image.asset("images/new-logo.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 135,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 350),
                    items: [
                      'images/carousel-item1.png',
                      'images/teste2.png',
                      'images/teste3.png',
                    ].map(
                      (i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Column(
                                children: [
                                  Image.asset(i),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  if (i == 'images/carousel-item1.png')
                                    Text(
                                      "${FruitList[0]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  if (i == 'images/teste2.png')
                                    Text(
                                      "${FruitList[1]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  if (i == 'images/teste3.png')
                                    Text(
                                      "${FruitList[2]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Color(0xFF607C4B),
                          elevation: 5,
                          shadowColor: Color(0xFF7BC144),
                          fixedSize: const Size(266, 39.0),
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
                                  const LoginPage()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                        );
                      },
                      child: const Text("LOGIN",
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: 18,
                            color: Colors.white,
                          ))),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            primary: Color(0xFF607C4B),
                            elevation: 5,
                            shadowColor: Color(0xFF7BC144),
                            fixedSize: const Size(266, 39.0),
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
                                    const RegisterPage()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                          );
                        },
                        child: const Text("REGISTER",
                            style: TextStyle(
                              fontFamily: "Arial",
                              fontSize: 18,
                              color: Colors.white,
                            ))),
                  ),
                  Text(
                    "By registering, you agree to the",
                    style: TextStyle(color: Colors.white),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "User Notice",
                      style: TextStyle(decoration: TextDecoration.underline),
                      children: [
                        TextSpan(
                            text: " and ",
                            style: TextStyle(decoration: TextDecoration.none)),
                        TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
