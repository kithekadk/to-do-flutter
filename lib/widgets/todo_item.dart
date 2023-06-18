import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/colors.dart';
import 'package:todo_flutter/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: Colors.white,
                leading: Icon(
                  todo.isDone ? Icons.check_box : Icons.check_box_outline_blank, 
                  color: tdBlue),
                title: Text(
                  // 'Cleaning the house', //This was before i started using the model to view todos
                  todo.description!,
                  style: TextStyle(
                      fontSize: 16,
                      color: tdBlack,
                      decoration: todo.isDone ? TextDecoration.lineThrough : null
                  )),
                trailing: Container(
                  // padding: const EdgeInsets.all(10),
                  // margin: const EdgeInsets.symmetric(vertical: 12.0),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: tdRed, borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.white,
                    iconSize: 18,
                    onPressed: () {},
                  ),
                )
              )
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20
                  ),
                  decoration: const BoxDecoration(
                    color:Colors.white,
                    // boxShadow: BoxShadow(
                    //   color: Colors.grey, 
                    //   offset: Offset(0.0, 0.0),
                    //   blurRadius: 10.0,
                    //   spreadRadius: 0.0
                    // )
                  ),
                )
              )
            ]
          ),
        )
      ],
    );
  }
}
