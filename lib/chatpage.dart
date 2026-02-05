import 'package:flutter/material.dart';


class q extends StatelessWidget {
  final String x;
  final VoidCallback? ontap;
  const q({Key? key,required this.x , this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){Navigator.pop(context);},
            ),
            centerTitle: true,
            title: Text(x),
          ), // AppBar
          body: Center(
            child:Text("Halo $x")
          )
        ));

  }
}