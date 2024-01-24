import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var bgColor = Color(0xff0D1117);
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            Container(
              // color: bgColor,
              child: Center(
                  child: Text(
                "Hello this is message text",
                style: TextStyle(color: Colors.white),
              )),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.only(
                    left: 30, top: 5, bottom: 5, right: 6),
                width: MediaQuery.of(context).size.width - 30,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 56, 66, 81),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 120,
                      child: TextFormField(
                        cursorColor: Colors.grey.shade500,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          size: 35,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
