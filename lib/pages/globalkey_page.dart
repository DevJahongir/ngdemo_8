import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/second_page.dart';

import 'counter_page.dart';

class GlobalkeyPage extends StatefulWidget {
  const GlobalkeyPage({super.key});

  @override
  State<GlobalkeyPage> createState() => _GlobalkeyPageState();
}

class _GlobalkeyPageState extends State<GlobalkeyPage> {
  late GlobalKey<CounterPageState> _counterState;

  _openSecondPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return SecondPage(counterKey:  _counterState);
    }));
  }

  @override
  void initState() {
    super.initState();
    _counterState = GlobalKey();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Global Page"),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CounterPage(key: _counterState,)
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          _openSecondPage();
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
