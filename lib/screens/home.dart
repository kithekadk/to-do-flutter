import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/colors.dart';
import 'package:todo_flutter/model/todo.dart';
import 'package:todo_flutter/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              searchBox(),
              viewToDos(),
            ],
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0, //remove navbar shadow
      backgroundColor: tdBGColor,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        // SETTING PROFILE PICTURE
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('images/profile.jpg'),
          ),
        )
      ]),
    );
  }
}

// This is the search box
Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey)),
    ),
  );
}

Widget viewToDos() {
  final todosList = ToDo.todoList();
  return Expanded(
    child: ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40, bottom: 20),
          child: const Text(
            'All Todos',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),

        for(ToDo mytodo in todosList)
          TodoItem( todo: mytodo),
      ],
    ),
  );
}
