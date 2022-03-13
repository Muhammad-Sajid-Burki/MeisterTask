import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
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
                Text("Projects", style: GoogleFonts.openSans(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, )),

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF5C6366),
                        radius: 60,
                        child: Icon(CupertinoIcons.rocket, color: Colors.white, size: 70,),
                      ),
                      SizedBox(height: 20,),
                      Text("Projects", style: GoogleFonts.openSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                      Text("You have no projects.\nTap + to create a new one.",textAlign: TextAlign.center, style: GoogleFonts.openSans(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500)),
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
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10.0)), //this right here
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Add", style: TextStyle(fontSize: 17),),
                                Text("New Project", style: TextStyle(color: Colors.black54),),
                                Text("New Project Group", style: TextStyle(color: Colors.black54),),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Cancel", style: TextStyle(fontSize: 17),),
                        ),

                      ],

                    ),
                  ),
                );
              });
        },
        child: new Icon(Icons.add),
      ),


    );
  }



}
