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
          child: Material(
            child: InkWell(
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xff559E1C),
                  contentPadding: EdgeInsets.all(0),
                  buttonPadding: EdgeInsets.all(0),
                  title: Text(
                    'Remove $nome',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Remove'),
                      child: Text(
                        'Remove',
                        style: TextStyle(
                          color: Color(0xff7BC144),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                ),
              ),
            ),
          ),
        ));
  }
}
