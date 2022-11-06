import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class createGroupPage extends StatefulWidget {
  const createGroupPage({Key? key}) : super(key: key);

  @override
  State<createGroupPage> createState() => _ProfileState();
}

class _ProfileState extends State<createGroupPage> {
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
                    SizedBox(
                      height: 110,
                    ),
                    Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color(0xFF559E1C),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Image.asset("images/grupo-teste.png"),
                                IconButton(
                                  icon: Image.asset("images/add-group.png"),
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        )),
                    SizedBox(
                      height: 72,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      height: 460,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 42,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Group Name",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(),
                              icon: Icon(CupertinoIcons.group, size: 30),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff7BC144),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7BC144)),
                              ),
                              counterStyle: TextStyle(color: Color(0xFF559E1C)),
                            ),
                            maxLines: 1,
                            maxLength: 25,
                            maxLengthEnforcement: MaxLengthEnforcement
                                .truncateAfterCompositionEnds,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Description",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              icon: Icon(
                                CupertinoIcons.chat_bubble_text,
                                size: 30,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(18),
                                    bottomLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(18)),
                                borderSide: BorderSide(
                                  color: Color(0xFF7BC144),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(18),
                                    bottomLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(18)),
                                borderSide: BorderSide(
                                  color: Color(0xFF7BC144),
                                ),
                              ),
                              counterStyle: TextStyle(color: Color(0xFF559E1C)),
                            ),
                            maxLines: 5,
                            maxLength: 255,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 61,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      spreadRadius: 1,
                                      blurRadius: 15),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      primary: Color(0xff7BC144),
                                      fixedSize: const Size(130, 23),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const createGroupPage()),
                                    );
                                  },
                                  child: const Text(
                                    "CODE GENERATE",
                                    style: TextStyle(
                                      fontFamily: "Arial",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  "X34TCD",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  CupertinoIcons.doc_on_doc_fill,
                                  color: Color(0xff57902A),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                primary: Color(0xff7BC144),
                                fixedSize: const Size(267, 43),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const createGroupPage()),
                              );
                            },
                            child: const Text(
                              "EDIT PROFILE",
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
          )),
    );
  }
}
