import 'package:bills_bid/components/group-desc-list.dart';
import 'package:bills_bid/expense.dart';
import 'package:flutter/material.dart';
import 'components/line.dart';

class GroupDescription extends StatefulWidget {
  const GroupDescription({Key? key}) : super(key: key);

  @override
  State<GroupDescription> createState() => _GroupDescriptionState();
}

class _GroupDescriptionState extends State<GroupDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF7BC144),
              Color(0xFF72CB2C),
              Color(0xFF7BC144),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                ),
                Container(
                  height: 140,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFF559E1C),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/perfil-teste.png',
                          scale: 0.8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'GRUPO DOS GURI',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 15),
                  child: Text(
                    "Descrição...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 39, top: 10, bottom: 10),
                            child: Text(
                              "10 Members",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      Line(
                          //width: 600,
                          ),
                    ],
                  ),
                ),
                Container(
                  height: 550,
                  padding: EdgeInsets.only(bottom: 3),
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      GDescList(nome: "Leonardo", color: Color(0xff7BC144)),
                      GDescList(nome: "Ricardo", color: Color(0xffD9D9D9)),
                      GDescList(nome: "William", color: Color(0xff7BC144)),
                      GDescList(nome: "Santiago", color: Color(0xff7BC144)),
                      GDescList(nome: "Matheus", color: Color(0xffD9D9D9)),
                      GDescList(nome: "Mike", color: Color(0xff7BC144)),
                      GDescList(nome: "Robson", color: Color(0xffD9D9D9)),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
