import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:w/Colorsfontsandwidgets.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

List<Map<String, dynamic>> items = [
  {
    'type': "foodwaste",
    'isselected': false,
  },
  {
    'type': "recyclable",
    'isselected': false,
  },
  {
    'type': "toxic",
    'isselected': false,
  },
];

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    void changeselection(int index) {
      if (items[index]['isselected'] == true) {
        setState(() {
          items[index]['isselected'] = false;
        });
      } else {
        setState(() {
          items[index]['isselected'] = true;
        });
      }
    }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WASTE TYPES",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 190,
            ),
            TextButton.icon(
              onPressed: () {
                changeselection(0);
              },
              icon: Icon(MdiIcons.food,
                  size: 50,
                  color: items[0]['isselected'] ? Colors.green : Colors.white),
              label: Text(
                "Food Waste",
                style: TextStyle(
                    fontSize: 20,
                    color:
                        items[0]['isselected'] ? Colors.green : Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
                onPressed: () {
                  changeselection(1);
                },
                icon: Icon(MdiIcons.recycle,
                    size: 50,
                    color:
                        items[1]['isselected'] ? Colors.green : Colors.white),
                label: Text(
                  "Recyclable",
                  style: TextStyle(
                      fontSize: 20,
                      color:
                          items[1]['isselected'] ? Colors.green : Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
                onPressed: () {
                  changeselection(2);
                },
                icon: Icon(MdiIcons.skull,
                    size: 50,
                    color:
                        items[2]['isselected'] ? Colors.green : Colors.white),
                label: Text(
                  "Toxic",
                  style: TextStyle(
                      fontSize: 20,
                      color:
                          items[2]['isselected'] ? Colors.green : Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (items[0]['isselected'] == false &&
                    items[1]['isselected'] == false &&
                    items[2]['isselected'] == false) {
                  showalertdialoguebox(
                      context, "Error", "please fill all the fields");
                } else {}
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20),
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
