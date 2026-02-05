import 'package:flutter/material.dart';
import 'ChatItem.dart';
import 'chatpage.dart';
void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final data = [
   ["Filbert Leisan (243303611412)","file.jpg","hari ini"],["Jony Wijaya","halo bang","seninnn"],["Budi","selamat tinggal","selasa"],["koala","kamu dimana?","rabu"]
  ];
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Aplikasi Chat"),
          ), // AppBar
          body: ListView.builder(
            itemCount:data.length,
            itemBuilder: (context, index) {
            List<String> bulan = data[index];
            return ChatItem(
              bulan: bulan,
              ontap:(){
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => q(x: bulan[0],ontap:(){Navigator.pop(context);}),
                  ),
                );
              },
            );
          }), // ListView.builder // Scaffold
        ), // MaterialApp
      );
    }
  }
