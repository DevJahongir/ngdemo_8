import 'package:flutter/material.dart';

class ValueKeyPage extends StatefulWidget {
  const ValueKeyPage({super.key});

  @override
  State<ValueKeyPage> createState() => _ValueKeyPageState();
}

class _ValueKeyPageState extends State<ValueKeyPage> {

  bool showFavouriteFramework = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Value Key"
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            if (showFavouriteFramework)

            TextField(
              key: ValueKey("framework"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  labelText: "Favourite Framework"
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              key: ValueKey("language"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Favourite Language"
              ),
            ),

            SizedBox(height: 10,),

            MaterialButton(
              onPressed: (){
                setState(() {
                  showFavouriteFramework = false;
                });
              },
              color: Colors.blue,
              child: Text("Remove Favourite Language field"),
            )
          ],
        ),
      ),
    );
  }
}
