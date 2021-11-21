import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.grey.shade700],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.green[100]),
              child: Center(
                  child: Icon(
                MdiIcons.progressClock,
                size: 60,
                color: Colors.black,
              )),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: Text(
                      "ID",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.800,
                    child: Text(
                      "STATUS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.20,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.transparent),
                  child: Center(
                    child: Text(
                      "456",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.transparent),
                    child: Center(
                      child: Text(
                        "Your Request is pending",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
