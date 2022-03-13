import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meister_task/MeisterTask/CreateProjectScreen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({Key? key}) : super(key: key);

  @override
  _MyTasksScreenState createState() => _MyTasksScreenState();
}

class _MyTasksScreenState extends State<MyTasksScreen> {
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
                InkWell(

                  child: Row(
                    children: [
                      Text("My Tasks", style: GoogleFonts.openSans(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, )),
                      Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey, size: 35,)
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text("Unscheduled", style: GoogleFonts.openSans(color: Colors.white, fontSize: 14,)),
                SizedBox(height: 100,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle_outline, color: Colors.white, size: 70,),
                      SizedBox(height: 30,),
                      Text("No Tasks in here", style: GoogleFonts.openSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                      Text("Grab a coffee!",textAlign: TextAlign.center, style: GoogleFonts.openSans(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500)),
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
  void ProfileBottomSheet(context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      showMaterialModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
          ),
          context: context,
          builder: (context) {
            return Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              width: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                color: Colors.white,

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                        ),
                        title: Text("Muhammad Sajid Burki"),
                        subtitle: Text("sk6011525@gmail.com"),
                        trailing: Text("LOG OUT", style: TextStyle(color: Colors.blue),),
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.account_circle_outlined, color: Colors.black, size: 30,),
                            title: Text("Plan", style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(
                            leading: Icon(Icons.notifications_outlined, color: Colors.black, size: 30,),
                            title: Text("Notifications", style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(
                            leading: Icon(Icons.account_circle_outlined, color: Colors.black, size: 30,),
                            title: Text("Appearance", style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(
                            leading: Icon(Icons.help_outline_outlined, color: Colors.black, size: 30,),
                            title: Text("Help & Info", style: TextStyle(fontSize: 18),),

                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xff4070ff),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(Icons.code_off_outlined, color: Colors.white, size: 20,),
                                    ),
                                    Flexible(
                                      child: Text("Passionate about mobile development? So are we, come join us!",
                                        style: TextStyle(color: Colors.white, fontSize: 12),),
                                    ),
                                  ],
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Terms of use", style: TextStyle(decoration: TextDecoration.underline, fontSize: 11),),
                                Text("Privacy policy", style: TextStyle(decoration: TextDecoration.underline, fontSize: 11),),
                              ],
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            );
          }
      );
    });
  }

}
