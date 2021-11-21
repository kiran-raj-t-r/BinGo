import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("PROFILE"),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: const [(Color(0xFF1565C0)), Color(0xFF62B1FF)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 80),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 5),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue[800],
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )),
                  ),
                ],
              ),
              Column(children: [
                profileitem("Name", "Abhijith"),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "  :  ",
                    style: TextStyle(fontSize: 20),
                  )),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                ),
                profileitem("phone", "879653468795347")
              ])
            ]),
          ),
        ));
  }
}

Widget profileitem(String field, String value) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Center(
        child: Text(
      field + "  :  " + value,
      style: TextStyle(fontSize: 20),
    )),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
  );
}
