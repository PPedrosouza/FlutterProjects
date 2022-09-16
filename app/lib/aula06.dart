import 'package:flutter/material.dart';
import 'options/01.dart';
import 'options/02.dart';
import 'options/03.dart';

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
            child: Text("Bem-Vindo")),
        ),
        body: const Center(
          child: Text("Olá")
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Pedro"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: const Text("Aula 01"),
                 onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> const MyApp01()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.check_box_outline_blank),
                title: const Text("Aula 02"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> const MyApp02()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.check_box_outline_blank),
                title: const Text("Aula 03"),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> const MyApp03()),
                    );
                },
              ),
          ],),
        ),
      );
  }
}
