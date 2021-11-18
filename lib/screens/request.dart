import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) => const LinearGradient(
              colors: [Colors.black, Colors.transparent],
            ).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black87, Colors.grey]),
                image: DecorationImage(
                    image: AssetImage('asset/aa.jpeg'), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 100,
            child: Text(
              "WASTES INCLUDE",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 140,
            child: Checkbox(
                value: checkBoxValue,
                activeColor: Colors.green,
                onChanged: (bool? newValue) {
                  setState(() {
                    checkBoxValue = newValue!;
                  });
                  Text('Remember me');
                }),
          ),
          SizedBox(
            height: 300,
          ),
          Column(
            children: [
              Text(
                "WASTE WEIGHT",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
