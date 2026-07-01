import 'package:flutter/material.dart';

void main() {
  List name = [
    "rayhan",
    "dolon",
    "niloy",
    "nice",
    "akash",
    "dolon",
    "niloy",
    "nice",
    "akash",
  ];
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("list view")),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment. ,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                //scrollDirection: Axis.horizontal,
                //reverse: true,
                itemBuilder: (c, i) {
                  return CircleAvatar(
                    child: Text(
                      " ${name[i]}",
                      style: TextStyle(
                        color:
                            name[i].toString().toLowerCase() ==
                                "Dolon".toLowerCase()
                            ? Colors.orange
                            : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // hint: Text("enter your name"),
                  labelText: " Name",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
