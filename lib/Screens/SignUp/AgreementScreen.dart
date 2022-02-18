import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeScreen extends StatefulWidget {
  const AgreeScreen({Key? key}) : super(key: key);

  @override
  _AgreeScreenState createState() => _AgreeScreenState();
}

class _AgreeScreenState extends State<AgreeScreen> {

  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
        child: Container(
          color: Colors.brown.shade50,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(Icons.clear, color: Colors.blue,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/handshakeIcon.png", color: Colors.blue, width: 50, height: 50,),
                    SizedBox(height: 20,),
                    Text("We take your privacy seriously.", style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.w600),),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: 'We care about our users and have always been dedicated to protecting your data and privacy - that\'s why we want to extra-clear about our',
                          style: TextStyle(
                              color: Colors.black, fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(text: ' privacy policy ',
                                style: TextStyle( decoration: TextDecoration.underline,
                                    color: Colors.blueAccent, fontSize: 13),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }
                            ),
                      TextSpan(
                          text: 'and',
                          style: TextStyle(
                              color: Colors.black, fontSize: 13),
                      ),
                            TextSpan(text: ' terms of service.',
                                style: TextStyle( decoration: TextDecoration.underline,
                                    color: Colors.blueAccent, fontSize: 13),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if ( check1 == false)
                            {
                              check1 = true;
                            }
                          else{
                            check1 = false;
                          }
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: check1 ? Colors.blue : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              check1 ?
                              Icon(Icons.check_circle, color: Colors.white,):
                              Icon(Icons.circle_outlined, color: Colors.blue,),
                              Text("I agree to the Privacy Policy and Terms of Service.", style: TextStyle(fontSize: 12, color: check1 ? Colors.white : Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if ( check2 == false)
                          {
                            check2 = true;
                          }
                          else{
                            check2 = false;
                          }
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: check2 ? Colors.blue : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              check2 ?
                              Icon(Icons.check_circle, color: Colors.white,):
                              Icon(Icons.circle_outlined, color: Colors.blue,),
                              Text("I agree to receive periodic product updates, offers,\nand promotions.", style: TextStyle(fontSize: 12, color: check2 ? Colors.white : Colors.black),)
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child:
                    check1 && check2 ?
                    Text("CONTINUE", style: TextStyle(color: Colors.blue),)
                     :
                    InkWell(
                        onTap: () {

                        },
                        child: Text("CONTINUE", style: TextStyle(color: Colors.blue.shade200),))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
