import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:flutter/material.dart';
import 'components/line.dart';
import 'package:bills_bid/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeedGroup extends StatefulWidget {
  const FeedGroup({Key? key}) : super(key: key);

  @override
  State<FeedGroup> createState() => _ProfileState();
}

class _ProfileState extends State<FeedGroup> {
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14, top: 25),
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.arrow_left,
                                  color: Colors.white),
                              Text(
                                ' BACK',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
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
                SizedBox(
                  height: 39,
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
                                'É os guri',
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
                Padding(padding: EdgeInsets.only(top: 10)),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'ja era rapaiza quebra tudop isso ai descrpition a dsauhihuisaduhiasduihasduhiasuhiduhiasduhidsa..',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(),
                  height: 415,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                  
                    children: [
                      SizedBox(height: 10),
                      Text(
                        '10 Members',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Line(),
                      
                      Container(
                        height: 45,
                        width: double.infinity,
                        alignment: FractionalOffset.centerLeft,
                        margin:
                        const EdgeInsets.only(left: 39, right: 39),
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/perfil-teste.png'),
                          ),
                          border:
                              Border.all(color: Color(0xFF7BC144), width: 1),
                        ),
                        child: const Text(
                          "Leonardo",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 250),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Color(0xff7BC144),
                          fixedSize: const Size(267, 43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FeedGroup(),
                            ),
                          );
                        },
                        child: const Text(
                          "CREATE BID",
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: 18,
                            color: Colors.white,
                          ),
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
    );
  }
}
