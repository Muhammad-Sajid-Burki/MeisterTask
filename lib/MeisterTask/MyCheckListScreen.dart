import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCheckListScreen extends StatefulWidget {
  const MyCheckListScreen({Key? key}) : super(key: key);

  @override
  _MyCheckListScreenState createState() => _MyCheckListScreenState();
}

class _MyCheckListScreenState extends State<MyCheckListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333C40),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("My CheckList", style: GoogleFonts.openSans(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, )),
                SizedBox(height: 20,),

                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF5C6366),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 5),
                           child: Icon(Icons.add, color: Colors.white,),
                         ),
                        Text("Add..", style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],
                    ),
                  )

                ),
                SizedBox(height: 60,),


                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF5C6366),
                        radius: 60,
                        child: Icon(CupertinoIcons.text_badge_checkmark, color: Colors.white, size: 70,),
                      ),
                      SizedBox(height: 20,),
                      Text("No CheckList Items", style: GoogleFonts.openSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 5,),
                      Text("Tap + to create a new one.",textAlign: TextAlign.center, style: GoogleFonts.openSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
