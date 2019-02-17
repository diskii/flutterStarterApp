import 'package:flutter/material.dart';
const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

const myIcon = const IconData(0xeb3b, fontFamily: 'MaterialIcons');
//const myIcon = const IconData(0xeb3b, fontFamily: 'Icon');

class Category extends StatelessWidget {
  const Category();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            // tap logic
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("working?")
                  ),
              );
              print("I was tapped");
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child:Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(myIcon),
                    )
                  ),
                ),
                Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'Hello',
                          ),
                        ),
                      )
                    ),
                ),
              ],
            )
          ),
        )
    );
  }
}