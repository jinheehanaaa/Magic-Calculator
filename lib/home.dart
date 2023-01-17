import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String calcText = "";
  int count = 0;
  String dob = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // We can use SizedBox if we don't use decoration widget
                    SizedBox(
                      height: size.height / 15,
                      child: Text(
                        calcText,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
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
                          blocks("-", Color.fromARGB(255, 112, 102, 64))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          blocks(":"),
                          blocks("0"),
                          blocks("."),
                          blocks("=",
                              count == 0 ? Colors.amberAccent : Colors.green)
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
    return GestureDetector(
      onTap: () {
        if (buttonText == "AC") {
          setState(() {
            calcText = "";
          });
        } else if (buttonText == "=") {
          if (count == 0) {
            setState(() {
              dob = calcText;
              count += 1;
              calcText = "";
            });
          } else {
            setState(() {
              calcText = dob;
              count -= 1;
            });
          }
        } else {
          setState(() {
            calcText = calcText + buttonText;
          });
        }
      },
      child: Padding(
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
      ),
    );
  }
}
