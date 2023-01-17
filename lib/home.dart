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
              )
            ],
          )),
    );
  }
}
