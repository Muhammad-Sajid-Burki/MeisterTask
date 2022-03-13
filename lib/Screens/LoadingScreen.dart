import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:meister_task/MeisterTask/HomeScreen.dart';
import 'package:meister_task/extra.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.orange,
                child: SpinKitDualRing(
                color: Colors.white,
                size: 40.0,
                controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
            ),
              ),
                SizedBox(height: 20,),
                Text("Just a second...", style: TextStyle(color: Colors.blue, fontSize: 17),),
                SizedBox(height: 10,),
                Text("Millions of tiny minions are currently busy delivering your data. Hand on.",textAlign: TextAlign.center, style: TextStyle(color: Colors.black38, fontSize: 14),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
