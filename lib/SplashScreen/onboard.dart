import 'package:flutter/material.dart';
import 'package:meister_task/MeisterTask/HomeScreen.dart';
import 'package:meister_task/SplashScreen/model/allinonboardscreen.dart';
import 'package:meister_task/SplashScreen/model/pallete.dart';


class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
        "assets/logo.png",
        "assets/screen1.png",
        "Work Together",
        "Simply",50,40),
    AllinOnboardModel(
        "assets/logo.png",
        "assets/screen2.png",
        "MeisterTask keeps it simple\nand lets you focus on your work.",
        "Get Organized",25,15),
    AllinOnboardModel(
        "assets/logo.png",
        "assets/screen3.png",
        "Simply collaborate with\nyour team wherever you are.",
        "Work Together",25,15),
    AllinOnboardModel(
        "assets/logo.png",
        "assets/screen4.png",
        "Get productive and automate\nyour workflow with your favorite apps.",
        "Automate & Connect",25,15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: allinonboardlist.length,
                itemBuilder: (context, index) {
                  return PageBuilderWidget(
                      title: allinonboardlist[index].titlestr,
                      description: allinonboardlist[index].description,
                      imgurl: allinonboardlist[index].imgStr,
                      titleImg: allinonboardlist[index].titleImgStr,
                      titleSize: allinonboardlist[index].titleSize,
                      descSize: allinonboardlist[index].descSize,
                  );
                }),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.17,
              left: MediaQuery.of(context).size.width * 0.44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  allinonboardlist.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ),
           Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
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
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(fontSize: 15, color: Colors.blue),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: Colors.blue)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )

          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? Palette.activeColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  String titleImg;
  double descSize;
  double titleSize;
  PageBuilderWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgurl,
      required this.titleImg,
      required this.descSize,
      required this.titleSize,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(titleImg, height: 120, width: 120,),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Image.asset(imgurl, height: 250, width: 250,),
          ),
          const SizedBox(
            height: 100,
          ),
          //Tite Text
          Text(title,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: titleSize,
                  // fontWeight: FontWeight.w700
              )),
          const SizedBox(
            height: 10,
          ),
          //discription
          Center(
            child: Text(description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: descSize,
                )),
          )
        ],
      ),
    );
  }
}
