import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:w/screens/adminappbar.dart';

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
                SizedBox(
                  width: 30,
                ),
                Container(
                    height: 30,
                    width: 140,
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
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.transparent),
                    child: Center(
                      child: Text(
                        "PENDING",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'CANCEL REQUEST',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const bincollection()),
                  );
                },
                child: const Text(
                  'Admin',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
