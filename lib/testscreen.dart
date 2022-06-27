
//PAGELAYOUT 
// import 'package:customwidgets/custom_widgets/pagelayout.dart';
// import 'package:customwidgets/custom_widgets/textstyle.dart';
// import 'package:flutter/material.dart';

// class TestScreen extends StatefulWidget {
//   const TestScreen({ Key? key }) : super(key: key);

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return PageLayout(
//       noAppBar: false,
//       title: 'TestScreenz',
//       appBarNotificationEnabled: true,
//       textfontSize:30 ,
//       isHost: true,
//       singleChildScrollView: SingleChildScrollView(),
//     );
//   }
// }


//DROPDOWNWIDGET 

// ignore_for_file: prefer_const_constructors, deprecated_member_use

// import 'package:flutter/material.dart';

// import 'custom_widgets/dropdownwidget.dart';

// List <String> level = [
//   "100","200","300","400","500",
// ];
// class TestScreen extends StatefulWidget {
//   const TestScreen({ Key? key }) : super(key: key);

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// List<DropdownMenuItem<String>> uniLevels() {
//     return level
//         .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
//               child: Row(
//                 children: [
//                   SizedBox(width:15),
//                   Text(e),
//                 ],
//               ),
//               value: e,
//             ))
//         .toList();
//   }
// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:DropDownWidget(
//           itemsValue: uniLevels(),
//           dropdownButtonWidth: 100,
//           horizontalSpace: 15,
//           selectedValue: level[0],
//         )
//       ),
//     );
//   }
// }



//SCREENSIZING 

import 'package:customwidgets/sizing.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({ Key? key }) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
         width:ScreenWidth(50) ,
         height:ScreenHeight(90),
         color: Colors.red,
        ),
      ),
    );
  }
}