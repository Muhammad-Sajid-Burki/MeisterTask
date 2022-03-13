import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meister_task/MeisterTask/CreateProjectScreen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                Text("Good Morning,", style: GoogleFonts.openSans(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, )),
                Text("Muhammad!", style: GoogleFonts.openSans(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, )),
                SizedBox(height: 10,),
                Text("\"May your choices reflect your hopes, not your fears.\"", style: GoogleFonts.openSans(color: Colors.white, fontSize: 13,)),
                SizedBox(height: 5,),
                Text("-Nelson Mandela", style: GoogleFonts.openSans(color: Colors.white, fontSize: 11,)),
                SizedBox(height: 40,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF5C6366),
                        radius: 60,
                        child: Icon(Icons.notifications_outlined, color: Colors.white, size: 70,),
                      ),
                      SizedBox(height: 20,),
                      Text("No Notifications", style: GoogleFonts.openSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                      Text("You have no\nnew notifications.",textAlign: TextAlign.center, style: GoogleFonts.openSans(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => CreateProjectScreen()));
        },
        child: new Icon(Icons.add),
      ),

    );
  }
}
