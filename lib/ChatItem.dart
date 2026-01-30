import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final List<String> bulan;
  final VoidCallback? ontap;
  const ChatItem({Key? key,required this.bulan , this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          border: Border.all(color: Colors.red, width: 2),
        ), // BoxDecoration
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.redAccent,
              backgroundImage: AssetImage('image/avatar.jpg'),
            ), // CircleAvatar
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bulan[0]),
                    Row(
                      children: [Icon(Icons.check), Text(bulan[1])],
                    ), // Row
                  ],
                ), // Column
              ), // Padding
            ), // Expanded
            Text(bulan[2]),
          ], // Row children
        ), // Row
      ),
    ); // Container
  }
}