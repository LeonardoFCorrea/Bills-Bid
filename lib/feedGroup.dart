import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:flutter/material.dart';
import 'components/line.dart';
import 'package:flutter/cupertino.dart';


class FeedGroup extends StatelessWidget {
  final String groupName;
  final int members;
  const FeedGroup({Key? key, required this.groupName, required this.members})
      : super(key: key);

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
                  height: 500,
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
                      Line(),    
                      Padding(padding: EdgeInsets.only(right: 100)),
                      Row(         
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,   
                        children: [
                          Container(                
                                width: 298,
                                height: 45,
                                decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff7BC144))    
                              ),           
                              child: Row(
                              children: [ 
                              Image.asset('images/perfil-teste.png'),
                              Text("$members Nome do membro"),   
                            ],
                          ),      
                          ),
                        ],     
                      ),                                        
                      SizedBox(height: 250),
                     ],
                  ),
                ),
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
        ),
      ),
    );
  }
}
 
