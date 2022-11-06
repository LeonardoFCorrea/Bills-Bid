import 'package:bills_bid/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
                        padding: EdgeInsets.only(left: 14, top: 70),
                        child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.arrow_left,
                                    color: Colors.white),
                                Text(
                                  'BACK',
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
                      Padding(
                        padding: EdgeInsets.only(left: 230, top: 70),
                        child: InkWell(
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
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
                      height: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 42,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Full Name",
                                counterText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(),
                                icon:
                                    Icon(Icons.person_outline_sharp, size: 25),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7BC144),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff7BC144)),
                                ),
                                counterStyle:
                                    TextStyle(color: Color(0xFF559E1C)),
                              ),
                              maxLines: 1,
                              maxLength: 25,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Phone",
                                counterText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(),
                                icon: Icon(Icons.phone_android_outlined,
                                    size: 25),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7BC144),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff7BC144)),
                                ),
                                counterStyle:
                                    TextStyle(color: Color(0xFF559E1C)),
                              ),
                              maxLines: 1,
                              maxLength: 25,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Date",
                                counterText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(),
                                icon: Icon(Icons.calendar_today, size: 25),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7BC144),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff7BC144)),
                                ),
                                counterStyle:
                                    TextStyle(color: Color(0xFF559E1C)),
                              ),
                              maxLines: 1,
                              maxLength: 25,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Password",
                                counterText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(),
                                icon:
                                    Icon(Icons.lock_outline_rounded, size: 25),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7BC144),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff7BC144)),
                                ),
                                counterStyle:
                                    TextStyle(color: Color(0xFF559E1C)),
                              ),
                              maxLines: 1,
                              maxLength: 25,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                              obscureText: true,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                counterText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(),
                                icon:
                                    Icon(Icons.lock_outline_rounded, size: 25),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff7BC144),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff7BC144)),
                                ),
                                counterStyle:
                                    TextStyle(color: Color(0xFF559E1C)),
                              ),
                              maxLines: 1,
                              maxLength: 25,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                              obscureText: true,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
