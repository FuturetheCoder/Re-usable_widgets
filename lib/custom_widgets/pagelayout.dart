// ignore_for_file: prefer_const_constructors


import 'package:customwidgets/custom_widgets/bottom_navbar.dart';
import 'package:customwidgets/custom_widgets/textstyle.dart';
import 'package:flutter/material.dart';



class PageLayout extends StatefulWidget {
  
  final Widget? child;
  final Widget singleChildScrollView;
  final String title;
  final double? textfontSize;
  final Function? backOnPressed;
  final List<Widget>? appBarActions;
  final bool noAppBar;
  final bool appBarNotificationEnabled;
  final double appBarElevation;
  final bool bottomNavEnabled, navPop, isHost;
  

   PageLayout(
      {Key? key,
      this.appBarNotificationEnabled = false,
      this.noAppBar = false,
      this.child,
      required this.singleChildScrollView,
      required this.title,
      this.textfontSize,
      this.backOnPressed,
      this.appBarActions,
      this.bottomNavEnabled = false,
      this.navPop = true,
      this.isHost = true,
      this.appBarElevation = 0.0})
      : super(key: key);

  @override
  _PageLayoutState createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
 

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
      var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return widget.noAppBar
        ? Scaffold(
            backgroundColor: const Color(0xff8FBCDD),
            key: widget.key,
            body: widget.child,
          )
        : Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xff8FBCDD),

           endDrawer: Drawer(
              backgroundColor: const Color(0xffF5F3F3),
              // ignore: todo
              child: Column() //TODO: Add drawer content here
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xff8FBCDD),
              elevation: widget.appBarElevation,
              centerTitle: true,
              title:
              DestinyText(data:widget.title,
              fontFamily: 'Nunito',
              size: widget.textfontSize,
              color: Colors.black,
              ),
             
              leading: 
              //REPLACE: with your notification icon feature
              widget.appBarNotificationEnabled
                  ? IconButton(
                    onPressed: () {
                      
                    },
                    icon:
                        const Icon(
                          
                          Icons.notifications, color: Color(0xff000000),
                          size: 30,
                          ),
                  )
                  : widget.navPop
                      ? InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.08),
                                    spreadRadius: 0.99,
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: 14.0,
                                    color: Color(0xff7A7777),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Text(""),
              actions: widget.appBarActions ?? [
               IconButton(
                 onPressed: () {
                   scaffoldKey.currentState!.openEndDrawer();
                 },
                 icon:
                     const Icon(Icons.menu, color: Color(0xFF000000),
                     size: 30,
                     ),
               )
              ],
            ),
            body: widget.isHost ? Stack(
              children: [
                widget.singleChildScrollView,
                 Positioned(
            bottom: 0,
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'assets/circle.png',
                  height: screenHeight / 2,
                  width: screenWidth / 2,
                  alignment: Alignment.bottomLeft,
                )),
          ),
           SizedBox(height: 60,),
         Positioned(
            child:BottomNavbar(leftIcon:Icons.home,rightIcon: Icons.note_add,) ,
            )
              ],
            ) :  Stack(
              children: [
                widget.singleChildScrollView,
                 Align(
                     alignment: Alignment.bottomLeft,
                     child: Image.asset(
                       'assets/circle.png',
                       height: screenHeight / 2,
                       width: screenWidth / 2,
                       alignment: Alignment.bottomLeft,
                     )),
          
              ],
            )

          );
  }

}
