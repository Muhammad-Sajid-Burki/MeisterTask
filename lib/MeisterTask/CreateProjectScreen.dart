import 'package:flutter/material.dart';

class CreateProjectScreen extends StatefulWidget {
  const CreateProjectScreen({Key? key}) : super(key: key);

  @override
  _CreateProjectScreenState createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
  TextEditingController _projectNameController = TextEditingController();

  bool buttonColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Create Project",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              onChanged: (val) {
                setState(() {
                  if (val.length < 1) {
                    buttonColor = false;
                  } else {
                    buttonColor = true;
                  }
                });
              },
              controller: _projectNameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "Project name",
                hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
                contentPadding: EdgeInsets.only(left: 20),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  hintText: "Tap to add notes...",
                  hintStyle: TextStyle(color: Colors.black38),
                  contentPadding: EdgeInsets.all(20),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                  labelText: "User name or email address",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 16),
                  contentPadding: EdgeInsets.all(20)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Add recent Members",
                style: TextStyle(fontSize: 16, color: Colors.black38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: buttonColor
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        width: 170,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              "CREATE PROJECT",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff99ddff),
                        ),
                        width: 170,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.black38,
                            ),
                            Text(
                              "CREATE PROJECT",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
