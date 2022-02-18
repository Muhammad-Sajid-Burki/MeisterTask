import 'package:flutter/material.dart';
import 'package:meister_task/SplashScreen/model/pallete.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign Up", style: TextStyle(color: Colors.black87, fontSize: 18),),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Your Email"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        hintText: "Choose Password"
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 15, color: Palette.backgroundColor),
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
                  SizedBox(height: 30,),
                  Center(child: Text("Forgot your Password?", style: TextStyle(color: Colors.blue),)),
                  SizedBox(height: 50,),
                  Center(child: Text("or with one of these services", style: TextStyle(color: Colors.black38, fontSize: 13),)),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset('assets/googleIcon.png', width: 20, height: 20, color: Colors.white,),
                          Padding(
                            padding: const EdgeInsets.only(left: 55),
                            child: Text(
                              "SIGN UP WITH GOOGLE",
                              style: TextStyle(fontSize: 15, color: Palette.backgroundColor),
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black54,
                        primary: Colors.red.shade700,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset('assets/facebookIcon.png', width: 20, height: 20,),

                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "SIGN UP WITH FACEBOOK",
                              style: TextStyle(fontSize: 15, color: Palette.backgroundColor),
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black54,
                        primary: Palette.facebookColor,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text("show more", style: TextStyle(color: Colors.blue, fontSize: 12),)),
                  SizedBox(height: 40,),
                  Center(child: Text("By signing up you agree with our terms and to recieve periodic product updates and tips", textAlign: TextAlign.center, style: TextStyle(color: Colors.black38, fontSize: 11),)),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
