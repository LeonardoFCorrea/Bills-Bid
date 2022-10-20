import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFF7BC144),
        Color(0xFF72CB2C),
        Color(0xFF7BC144),
      ])),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Column(
              children: [
                Row(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14, top: 40),
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            '< BACK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                      )),
                ]),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
