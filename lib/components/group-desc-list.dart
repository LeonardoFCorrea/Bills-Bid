import 'package:flutter/material.dart';

class GDescList extends StatelessWidget {
  final String nome;
  final Color color;
  const GDescList({Key? key, required this.nome, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xff7BC144),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 13, top: 3, bottom: 3),
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
                      "$nome",
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                )
              ],
            ),
          )),
    );
  }
}
