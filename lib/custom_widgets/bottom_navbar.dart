
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {

  final IconData leftIcon;
  final IconData rightIcon;
  
  const  BottomNavbar({Key? key, required this.leftIcon, required this.rightIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
              child: Icon(
                leftIcon,
                size: 30,
              ),
              onTap: () {
            
              } //this place when ontap should always return to the
              //host homepage
              ),
          SizedBox(
            height: 30,
            child: GestureDetector(
              child: Icon(
                rightIcon,
                size: 30,
              ),
              onTap: () {
             
              }, //this place when ontap should always return to the
              //Attendance sheet  page
            ),
          ),
        ],
      ),
    ));
  }
}
