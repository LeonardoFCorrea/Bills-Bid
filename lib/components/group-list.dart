import 'package:flutter/material.dart';

class GroupItem extends StatelessWidget {
  final String groupName;
  final int members;
  const GroupItem({Key? key, required this.groupName, required this.members})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22, left: 20, right: 20),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 5),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/grupo-teste.png",
                    scale: 1.8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$groupName",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "$members Members",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: Image.asset("images/config-icon.png"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
