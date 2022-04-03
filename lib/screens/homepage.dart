import 'package:etec_homework02/widgets/carditems.dart';
import 'package:flutter/material.dart';
//import 'widgets/data.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List _list = const [
    {
      "image": "assets/cheap1.jpg",
      "title": "Travel",
      "subtitle": "5 cheap eats",
    },
    {
      "image": "assets/cheap2.jpg",
      "title": "Travel 1",
      "subtitle": "6 cheap eats",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8f00ff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Cleveland'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Stack(children: [
        ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: CardItems(
                  txttitle: _list[index]['title'],
                  image: _list[index]['image'],
                  protitle: _list[index]['subtitle'],
                ),
              );
            }),
        Positioned(
          bottom: 20.0,
          left: 120,
          right: 120,
          child: Container(
            width: 150,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff8f00ff)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ADD ENTRY')
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}
