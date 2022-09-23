import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  MaterialApp newMethod() {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Aula 6 - Atividade")),
            toolbarHeight: 100,
        ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 200,
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "data",
                        style: TextStyle(color: Colors.white),
                        ),
                      Text(
                        "data",
                        style: TextStyle(color: Colors.white),
                        ),
                    ],
                  ),
                ),
              ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("1"),
              Text("2"),
              Text("3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("4"),
              Text("5"),
              Text("6"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(""),
              Text("0"),
              Text(""),
            ],
          ),
        ],
        ),
      ),
      
      );
  }
}
