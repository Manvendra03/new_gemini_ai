import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    const bottomBarColor = const Color.fromARGB(255, 56, 66, 81);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          appBarTheme: AppBarTheme(backgroundColor: bgColor)),
      title: 'Flutter Gemini',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 29,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: Colors.white,
                height: .5,
              ),
            ),
          ),
          backgroundColor: bgColor,
          body: Stack(
            children: [
              Container(
                // color: bgColor,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: bottomBarColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 17, 75, 16),
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: const Text(
                              "this is message and here come is it means this is position of message ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.only(
                      left: 30, top: 5, bottom: 5, right: 6),
                  width: MediaQuery.of(context).size.width - 30,
                  height: 55,
                  decoration: BoxDecoration(
                      color: bottomBarColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 120,
                        child: TextFormField(
                          cursorColor: Colors.grey.shade500,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
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
      ),
    );
  }
}
