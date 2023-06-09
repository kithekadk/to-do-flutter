import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(children: const [
          Icon(
            Icons.menu,
            color: tdBlack,size:30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRect(
              // child: Image.asset('/'),
            ),
          )
        ]),
      ),
      body: Container(
        child: Text('This is the homescreen')
      )

    );
  }
}