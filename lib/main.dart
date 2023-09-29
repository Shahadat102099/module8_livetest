import 'package:counter_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CounterApp",
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counterN=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sum=0"),
            TextFormField(decoration: TextfieldStyle("First Number")),
            SizedBox(height: 20,),
            TextFormField(decoration: TextfieldStyle("Second Number"),),
            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(onPressed: (){}, child: Text("Add")),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counterN=counterN+2;
          });

        },
      ),

      );
  }
}
