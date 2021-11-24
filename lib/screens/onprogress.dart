import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onprogress extends StatelessWidget {
  const Onprogress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.grey.shade700],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 290,
                  width: MediaQuery.of(context).size.width * 0.90,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ID:456",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "NAME             :  ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "KIRAN RAJ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "LOCALITY      :  ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "KALADY",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "PHONE           :  ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "1234567890 ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "GEO LOCATION",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 120,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'ACCEPT',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'REJECT',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
