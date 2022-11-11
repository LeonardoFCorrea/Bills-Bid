import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:bills_bid/editProfile.dart';
import 'package:flutter/material.dart';
import 'components/line.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                                'Matheus Galvain',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'matheusgalvain',
                                style: TextStyle(
                                  fontSize: 15,
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
                SizedBox(
                  height: 72,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 42,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline_sharp,
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Full Name',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff494747),
                                  ),
                                ),
                                Text(
                                  'Matheus Galvain',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff494747),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Line(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_android_outlined,
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff494747),
                                  ),
                                ),
                                Text(
                                  '+55 (54) 98423-0745',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff494747),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Line(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff494747),
                                  ),
                                ),
                                Text(
                                  '18/09/2005',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff494747),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Line(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline_rounded,
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff494747),
                                  ),
                                ),
                                Text(
                                  '**********',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff494747),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Line(),
                      SizedBox(
                        height: 50,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfilePage(),
                            ),
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
      ),
    );
  }
}
