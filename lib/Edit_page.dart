import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:anikkumarnath/Splash_screen.dart';
import 'package:anikkumarnath/profile_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 10,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 10,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 163, 248),
              border: Border.all(
                color: Color.fromARGB(255, 12, 12, 12),
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(0, 0, 0, 0.8),
                size: 15,
              ),
              label: Text(
                "Back",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Edit Page",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(120, 255, 125, 1),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                color: Color.fromARGB(255, 187, 248, 118),
              ),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.save_outlined,
                  color: Color.fromRGBO(0, 0, 0, .8),
                  size: 15,
                ),
                label: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, .8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 0.2,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Page Editing........",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontStyle: FontStyle.normal,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
