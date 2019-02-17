import 'package:flutter/material.dart';


class CategoryRoute extends StatelessWidget {


  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];
  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _iconList = <Icon>[
    Icon(Icons.change_history,color: Colors.blue),
    Icon(Icons.casino,color: Colors.blue),
    Icon(Icons.video_library,color: Colors.blue),
    Icon(Icons.cake,color: Colors.blue),
    Icon(Icons.keyboard,color: Colors.blue),
    Icon(Icons.keyboard,color: Colors.blue),
    Icon(Icons.keyboard,color: Colors.blue),
    Icon(Icons.keyboard,color: Colors.blue),
  ];

  Widget _buildCategoryWidgets(BuildContext context,int index) {
    return Container(
      height: 100,
      color: Colors.green[100],
      child: Padding(
        padding: EdgeInsets.all(1),
        child: InkWell(
          // tap logic
          onTap: () {
//            Scaffold.of(context).showSnackBar(SnackBar(
//                content: Text("working?")
//            ));

            print("I was tapped");
          },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      height: 50,
                      width: 50,
                      color: _baseColors[index],
                      child:Padding(
                        padding: EdgeInsets.all(5),
                        child: _iconList[index],
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      height: 50,
                      width: 50,
                      color: _baseColors[index],
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            _categoryNames[index],
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

  @override
  Widget build(BuildContext context) {

    //create a list view with all the categories first
    final listView = ListView.builder(
        itemBuilder: _buildCategoryWidgets,
        itemCount: _baseColors.length
    );


    //create the appBar
    //font size 30
    //elevation 0
    final appBar = AppBar(
      title: Text("Unit Converter"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.green[100],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

}