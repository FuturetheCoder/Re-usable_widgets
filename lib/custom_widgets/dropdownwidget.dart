// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';



class DropDownWidget extends StatefulWidget {
  String? selectedValue;
    final List<DropdownMenuItem<String>>? itemsValue;
  final double dropdownButtonWidth;
  final double horizontalSpace;
   DropDownWidget({ Key? key,
  required this.itemsValue, 
  required this.dropdownButtonWidth,
  this.selectedValue,
  required this.horizontalSpace,
   }) : super(key: key);



  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widget.dropdownButtonWidth,
      decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                        offset: Offset(2, 4),
                        color: Colors.grey
                        ),
                      ],
                   border:  Border.all(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  
                    color: Colors.white,
                  
                    ),
      child: DropdownButton<String>(
        value: widget.selectedValue,
        icon: Row(
          children: [
            SizedBox(width:widget.horizontalSpace),
            Icon(Icons.arrow_drop_down,color: Colors.black,),
          ],
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        underline: Container(
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            widget.selectedValue = newValue;
          });
        },
        items: widget.itemsValue,
      ),
    );
  }
}