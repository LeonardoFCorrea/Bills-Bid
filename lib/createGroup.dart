import 'dart:html';

import 'package:bills_bid/home.dart';
import 'package:bills_bid/register.dart';
import 'package:bills_bid/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class createGroupPageWidget extends StatefulWidget {
  const createGroupPageWidget({Key? key}) : super(key: key);

  @override
  _createGroupPageWidgetState createState() => _createGroupPageWidgetState();
}

class _createGroupPageWidgetState extends State<createGroupPageWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF559E1C),
      appBar: AppBar(
        backgroundColor: Color(0xFF559E1C),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFF559E1C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.35, -0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Container(
                          width: 1122,
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Nome',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Color(0xFF559E1C),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            ),
                            style:
                                TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: TextFormField(
                        controller: textController2,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'CPF',
                  
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        ),
                        style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0x00000000),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlatButton(
      onPressed: () {  },
      height: 150,
      minWidth: 150,
      color: Colors.grey,
      padding: EdgeInsets.all(0),
      child: Text(
        "some text",
        style: TextStyle(color: Colors.white),
      ),
    ),
                                  
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  'X34TCD',
          
                                ),
                              ),
                             FlatButton(
      onPressed: () {  },
      height: 150,
      minWidth: 150,
      color: Colors.grey,
      padding: EdgeInsets.all(0),
      child: Text(
        "some text",
        style: TextStyle(color: Colors.white),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: ElevatedButton(
                            child: Text(
                              "Salvar",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(130, 45)),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFF8A82E2),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            )),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}