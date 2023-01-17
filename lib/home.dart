import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 50, 0, 251),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height / 15,
                color: Colors.amber,
              ),
              Container(
                  height: size.height / 1.7,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 92, 95, 102),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks("AC", Colors.pink),
                          blocks("CC", Colors.pink),
                          blocks("%", Colors.pink),
                          blocks("/", Colors.amberAccent)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks("1"),
                          blocks("2"),
                          blocks("3"),
                          blocks("X", Colors.amberAccent)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks("4"),
                          blocks("5"),
                          blocks("6"),
                          blocks("+", Colors.amberAccent)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks("7"),
                          blocks("8"),
                          blocks("9"),
                          blocks("-", Colors.amberAccent)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks("1"),
                          blocks("2"),
                          blocks("3"),
                          blocks("=", Colors.amberAccent)
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }

// Repeated button blocks
  Widget blocks(String buttonText, [Color? buttonColor]) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 8, right: 8),
      child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            color: Color(
              0xff22252D,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  //  // make default color (if not specified) by using ?? nullable color
                  color: buttonColor ?? Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
