import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("HomePage"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pushNamed("/example"),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 244, 255),
                  ),
                  child: const Center(
                      child: Text(
                    "Example",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed("/"),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 244, 255),
                  ),
                  child: const Center(
                      child: Text(
                    "Example Freezed",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed("/"),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 244, 255),
                  ),
                  child: const Center(
                      child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed("/"),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 244, 255),
                  ),
                  child: const Center(
                      child: Text(
                    "Contact Cubit",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
