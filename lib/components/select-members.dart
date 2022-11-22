import 'package:flutter/material.dart';

class SelectMembers extends StatefulWidget {
  final String nome;

  const SelectMembers({Key? key, required this.nome}) : super(key: key);

  @override
  State<SelectMembers> createState() => _SelectMembersState();
}

class _SelectMembersState extends State<SelectMembers> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Container(
        child: Material(
          child: InkWell(
            onTap: () {
              setState(() {
                cont += 1;
                print(cont);
              });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    color: Color(0xff7BC144),
                  ),
                  right: BorderSide(
                    color: Color(0xff7BC144),
                  ),
                  bottom: BorderSide(
                    color: Color(0xff7BC144),
                  ),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 13, top: 3, bottom: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/grupo-teste.png", width: 50),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "a",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    )
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
