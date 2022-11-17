import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedGroup extends StatefulWidget {
  const FeedGroup({Key? key}) : super(key: key);

  @override
  State<FeedGroup> createState() => _FeedGroupState();
}

class _FeedGroupState extends State<FeedGroup> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14, top: 20, bottom: 20),
                        child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.arrow_left,
                                    color: Colors.white),
                                    Container(
                                      height: 65,
                                      width: 65,
                                      child: Image.asset("images/grupo-teste.png"),
                                      ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Column( 
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [                               
                                  Text(
                                  'AMIGOS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Matheus, Leonardo',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      ),
                                ),
                                ],),
                                Padding(padding: EdgeInsets.only(left:100)),
                                Icon(CupertinoIcons.ellipsis_vertical, 
                                color: Colors.white,),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 650,
                    width: 410,
                    decoration: BoxDecoration( borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 350,
                          decoration: BoxDecoration(  
                          ),
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
    );
  }
}
