import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var logger = Logger();

  @override
  void initState() {
    logger.i("initState");
  }

  @override
  void didChangeDependencies() {
    logger.d("didChangeDependencies");
  }





  @override
  Widget build(BuildContext context) {
  logger.i("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Widget Lifecycle"),
      ),

      body: Center(

      ),
    );
  }

  @override
  void didUpdateWidget(covariant DetailsPage oldWidget) {
    logger.d("didUpdateWidget");
  }

  @override
  void deactivate() {
    logger.d("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    logger.i("dispose");
  }
}
