import 'package:flutter/material.dart';

showalertdialoguebox(context, String title, String content) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("ok"))
            ],
          ));
}
