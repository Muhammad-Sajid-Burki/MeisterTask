import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meister_task/MeisterTask/MyCheckListScreen.dart';
import 'package:meister_task/MeisterTask/MyTasksScreen.dart';
import 'package:meister_task/MeisterTask/NotificationScreen.dart';
import 'package:meister_task/MeisterTask/ProjectsScreen.dart';
import 'package:meister_task/SplashScreen/model/pallete.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    billingBottomSheet(context);
  }

  int _selectedPage = 0;
  final _pageOptions = [
    NotificationScreen(),
    ProjectsScreen(),
    MyTasksScreen(),
    MyCheckListScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF333C40),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Icon(Icons.search, color: Colors.white, size: 30,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                ProfileBottomSheet(context);
              },
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF333C40),
      body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40),
            selectedItemColor: Colors.amberAccent,
            onTap: (int index){
              setState(() {
                _selectedPage= index;
              });
            },

          backgroundColor: Color(0xFF333C40),
            type: BottomNavigationBarType.fixed, // This is all you need!
            currentIndex: 0,
            iconSize: 30.0,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  title: Container(height: 0.0),
                  icon: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                     color: _selectedPage == 0 ? Colors.blue : Color(0xFF333C40),
                  ),
                  child: Icon(Icons.notifications_outlined, color: Colors.white,))),
              BottomNavigationBarItem(
                  title: Container(height: 0.0), icon: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _selectedPage == 1 ? Colors.deepPurpleAccent : Color(0xFF333C40),
                  ),
                  child: Icon(CupertinoIcons.rocket, color: Colors.white,))),
              BottomNavigationBarItem(
                  title: Container(height: 0.0), icon: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _selectedPage == 2 ? Colors.orange : Color(0xFF333C40),
                  ),
                  child: Icon(Icons.check_circle_outlined, color: Colors.white))),
              BottomNavigationBarItem(
                  title: Container(height: 0.0), icon: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _selectedPage == 3 ? Colors.blue : Color(0xFF333C40),
                  ),
                  child: Icon(CupertinoIcons.text_badge_checkmark, color: Colors.white)))
            ]),

    );
  }

  void billingBottomSheet(context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      showMaterialModalBottomSheet(
          context: context,
          builder: (context) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Container(
                  color: Colors.white,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close, color: Colors.black54,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Image.asset("assets/starlogo.png",),
                          SizedBox(height: 20,),
                          Text("Try for 7 days", style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Then PKR890.00 per month", style: TextStyle(
                              fontSize: 18, color: Colors.black38),),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 13,
                                child: Icon(
                                  Icons.all_inclusive, color: Colors.white,
                                  size: 20,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("Unlimited Integrations",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          IconText(Icons.play_circle_outlined,
                              "Workflow Automations"),
                          SizedBox(height: 10,),
                          IconText(Icons.assignment_ind_outlined,
                              "Project Groups"),
                          SizedBox(height: 10,),
                          IconText(Icons.attach_file_outlined,
                              "File attachment up to 200MB "),
                          SizedBox(height: 10,),
                          IconText(Icons.panorama_outlined,
                              "Beautiful Custom Backgrounds"),
                          SizedBox(height: 10,),
                          IconText(Icons.support_agent_outlined,
                              "Priority Support"),
                          SizedBox(height: 10,),
                          IconText(Icons.check_circle, "Cancel Anytime"),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Text("And much more...", style: TextStyle(
                                color: Colors.blue, fontSize: 16),),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(fontSize: 16,
                                          color: Palette.backgroundColor),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.black54,
                                      primary: Colors.blue,

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)

                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text("Terms of Use", style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black38,
                                        fontSize: 12),),
                                    Text("Privacy Policy", style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black38,
                                        fontSize: 12),),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Billing starts after 7 days and will renew automatically every month.\nYou will gain access to the features listed above, in addition to the ones available in the lower plans.\nYour subscription will renew every month or every year, based on your choosen subscription model.\nPayments won't be refunded for partial billing periods. You can cancel a subscription anytime via the subscription menu in your Google Play store app.By subscribing you agree to our terms & conditions and Privacy Policy",
                                        style: TextStyle(color: Colors.black38,
                                            fontSize: 10),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
      );
    });
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

  Widget IconText(IconData icon, String text){
    return Row(
      children: [
        Icon(icon, color: Colors.black,size: 28,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(text, style: TextStyle(color: Colors.black54, fontSize: 16),),
        ),
      ],
    );
  }
}


