import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/src/painting/image_resolution.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w/screens/bins.dart';
import 'package:w/screens/completed.dart';
import 'package:w/screens/onprogress.dart';

class bincollection extends StatefulWidget {
  const bincollection({Key? key}) : super(key: key);

  @override
  State<bincollection> createState() => _bincollectionState();
}

class _bincollectionState extends State<bincollection> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("BinGo",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(MdiIcons.menu),
              onPressed: () {},
            ),
            backgroundColor: Colors.green,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('asset/black.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            bottom: TabBar(tabs: [
              Tab(text: "BINS"),
              Tab(text: "ON GOING"),
              Tab(text: "COMPLETED"),
            ]),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey.shade700],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: TabBarView(
              children: [
                Bins(),
                Onprogress(),
                Completed(),
              ],
            ),
          ),
        ),
      );
}
